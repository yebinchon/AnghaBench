; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_check_addr_clash.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_check_addr_clash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@DEV_TYPE_TUN = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"WARNING: --%s address [%s] conflicts with --ifconfig address pair [%s, %s]. %s\00", align 1
@ifconfig_warn_how_to_silence = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [224 x i8] c"WARNING: potential conflict between --%s address [%s] and --ifconfig address pair [%s, %s] -- this is a warning only that is triggered when local/remote addresses exist within the same /24 subnet as --ifconfig endpoints. %s\00", align 1
@DEV_TYPE_TAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [145 x i8] c"WARNING: --%s address [%s] conflicts with --ifconfig subnet [%s, %s] -- local and remote addresses cannot be inside of the --ifconfig subnet. %s\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @check_addr_clash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_addr_clash(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gc_arena, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = call i32 (...) @gc_new()
  %19 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %99

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DEV_TYPE_TUN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  store i32 -256, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, -256
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, -256
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, -256
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36, %26
  %41 = load i32, i32* @M_WARN, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @print_in_addr_t(i32 %43, i32 0, %struct.gc_arena* %11)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @print_in_addr_t(i32 %45, i32 0, %struct.gc_arena* %11)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @print_in_addr_t(i32 %47, i32 0, %struct.gc_arena* %11)
  %49 = load i32, i32* @ifconfig_warn_how_to_silence, align 4
  %50 = call i32 (i32, i8*, ...) @msg(i32 %41, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %44, i32 %46, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %36
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @M_WARN, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @print_in_addr_t(i32 %62, i32 0, %struct.gc_arena* %11)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @print_in_addr_t(i32 %64, i32 0, %struct.gc_arena* %11)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @print_in_addr_t(i32 %66, i32 0, %struct.gc_arena* %11)
  %68 = load i32, i32* @ifconfig_warn_how_to_silence, align 4
  %69 = call i32 (i32, i8*, ...) @msg(i32 %60, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %63, i32 %65, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %55
  br label %98

71:                                               ; preds = %22
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @DEV_TYPE_TAP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %75
  %86 = load i32, i32* @M_WARN, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @print_in_addr_t(i32 %88, i32 0, %struct.gc_arena* %11)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @print_in_addr_t(i32 %90, i32 0, %struct.gc_arena* %11)
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @print_in_addr_t(i32 %92, i32 0, %struct.gc_arena* %11)
  %94 = load i32, i32* @ifconfig_warn_how_to_silence, align 4
  %95 = call i32 (i32, i8*, ...) @msg(i32 %86, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %89, i32 %91, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %85, %75
  br label %97

97:                                               ; preds = %96, %71
  br label %98

98:                                               ; preds = %97, %70
  br label %99

99:                                               ; preds = %98, %5
  %100 = call i32 @gc_free(%struct.gc_arena* %11)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @print_in_addr_t(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
