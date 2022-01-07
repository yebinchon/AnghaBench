; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_scripting-banner.c_scripting_banner_init.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_scripting-banner.c_scripting_banner_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { %struct.lua_State* }
%struct.lua_State = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"SCRIPTING: banner init          \0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"setTcpPorts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Banner1*)* @scripting_banner_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scripting_banner_init(%struct.Banner1* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Banner1*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %3, align 8
  %7 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %8 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %7, i32 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  store %struct.lua_State* %9, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = icmp eq %struct.lua_State* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %77

13:                                               ; preds = %1
  %14 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = call i32 @lua_getglobal(%struct.lua_State* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = call i64 @lua_isstring(%struct.lua_State* %17, i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = call i32 @lua_tostring(%struct.lua_State* %22, i32 -1)
  %24 = call i32 @register_script_for_ports(%struct.Banner1* %21, i32 %23)
  br label %76

25:                                               ; preds = %13
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = call i64 @lua_isinteger(%struct.lua_State* %26, i32 -1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = call i64 @lua_tointeger(%struct.lua_State* %31, i32 -1)
  %33 = trunc i64 %32 to i32
  %34 = call i32 @register_script_for_port(%struct.Banner1* %30, i32 %33)
  br label %75

35:                                               ; preds = %25
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = call i64 @lua_istable(%struct.lua_State* %36, i32 -1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %41 = call i32 @luaL_len(%struct.lua_State* %40, i32 -1)
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %70, %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @lua_geti(%struct.lua_State* %47, i32 -1, i32 %48)
  %50 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %51 = call i64 @lua_isstring(%struct.lua_State* %50, i32 -1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = call i32 @lua_tostring(%struct.lua_State* %55, i32 -1)
  %57 = call i32 @register_script_for_ports(%struct.Banner1* %54, i32 %56)
  br label %69

58:                                               ; preds = %46
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = call i64 @lua_isinteger(%struct.lua_State* %59, i32 -1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %64 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %65 = call i64 @lua_tointeger(%struct.lua_State* %64, i32 -1)
  %66 = trunc i64 %65 to i32
  %67 = call i32 @register_script_for_port(%struct.Banner1* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %42

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %73, %35
  br label %75

75:                                               ; preds = %74, %29
  br label %76

76:                                               ; preds = %75, %20
  store i8* null, i8** %2, align 8
  br label %77

77:                                               ; preds = %76, %12
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @lua_getglobal(%struct.lua_State*, i8*) #1

declare dso_local i64 @lua_isstring(%struct.lua_State*, i32) #1

declare dso_local i32 @register_script_for_ports(%struct.Banner1*, i32) #1

declare dso_local i32 @lua_tostring(%struct.lua_State*, i32) #1

declare dso_local i64 @lua_isinteger(%struct.lua_State*, i32) #1

declare dso_local i32 @register_script_for_port(%struct.Banner1*, i32) #1

declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) #1

declare dso_local i64 @lua_istable(%struct.lua_State*, i32) #1

declare dso_local i32 @luaL_len(%struct.lua_State*, i32) #1

declare dso_local i32 @lua_geti(%struct.lua_State*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
