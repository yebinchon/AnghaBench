; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_multicastJoinLeave.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_multicastJoinLeave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [30 x i8] c"net_multicastJoin is called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"invalid if ip\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid multicast ip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @net_multicastJoinLeave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_multicastJoinLeave(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @NODE_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_isstring(i32* %12, i32 1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %3, align 4
  br label %82

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @luaL_checklstring(i32* %19, i32 1, i64* %6)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @stricmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i64 7, i64* %6, align 8
  br label %34

34:                                               ; preds = %33, %29
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %39, 15
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = icmp ult i64 %42, 7
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38, %35
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %46, i32* %3, align 4
  br label %82

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = call i8* @ipaddr_addr(i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @lua_isstring(i32* %51, i32 2)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @luaL_error(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %3, align 4
  br label %82

57:                                               ; preds = %47
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @luaL_checklstring(i32* %58, i32 2, i64* %6)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %63, 15
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = icmp ult i64 %66, 7
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62, %57
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @luaL_error(i32* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 %70, i32* %3, align 4
  br label %82

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  %73 = call i8* @ipaddr_addr(i8* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @igmp_joingroup(%struct.TYPE_6__* %8, %struct.TYPE_6__* %7)
  br label %81

79:                                               ; preds = %71
  %80 = call i32 @igmp_leavegroup(%struct.TYPE_6__* %8, %struct.TYPE_6__* %7)
  br label %81

81:                                               ; preds = %79, %77
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %68, %54, %44, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @stricmp(i8*, i8*) #1

declare dso_local i8* @ipaddr_addr(i8*) #1

declare dso_local i32 @igmp_joingroup(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @igmp_leavegroup(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
