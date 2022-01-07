; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_adv_install.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_adv_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@RunPreSetupCommands = common dso_local global i32 0, align 4
@run_setup_commands_callback = common dso_local global i32 0, align 4
@RegisterOCXs = common dso_local global i32 0, align 4
@register_ocxs_callback = common dso_local global i32 0, align 4
@PerUserInstall = common dso_local global i32 0, align 4
@per_user_install_callback = common dso_local global i32 0, align 4
@RunPostSetupCommands = common dso_local global i32 0, align 4
@DelDirs = common dso_local global i32 0, align 4
@del_dirs_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @adv_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adv_install(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i64 @check_admin_rights(%struct.TYPE_5__* %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %2, align 8
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RunPreSetupCommands, align 4
  %20 = load i32, i32* @run_setup_commands_callback, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i64 @iterate_section_fields(i32 %15, i32 %18, i32 %19, i32 %20, %struct.TYPE_5__* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %95

28:                                               ; preds = %12
  %29 = call i32 @OleInitialize(i32* null)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RegisterOCXs, align 4
  %37 = load i32, i32* @register_ocxs_callback, align 4
  %38 = call i64 @iterate_section_fields(i32 %32, i32 %35, i32 %36, i32 %37, %struct.TYPE_5__* null)
  store i64 %38, i64* %4, align 8
  %39 = call i32 (...) @OleUninitialize()
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %95

45:                                               ; preds = %28
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PerUserInstall, align 4
  %53 = load i32, i32* @per_user_install_callback, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = call i64 @iterate_section_fields(i32 %48, i32 %51, i32 %52, i32 %53, %struct.TYPE_5__* %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %2, align 8
  br label %95

61:                                               ; preds = %45
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RunPostSetupCommands, align 4
  %69 = load i32, i32* @run_setup_commands_callback, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = call i64 @iterate_section_fields(i32 %64, i32 %67, i32 %68, i32 %69, %struct.TYPE_5__* %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %2, align 8
  br label %95

77:                                               ; preds = %61
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DelDirs, align 4
  %85 = load i32, i32* @del_dirs_callback, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = call i64 @iterate_section_fields(i32 %80, i32 %83, i32 %84, i32 %85, %struct.TYPE_5__* %86)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i64, i64* %4, align 8
  store i64 %92, i64* %2, align 8
  br label %95

93:                                               ; preds = %77
  %94 = load i64, i64* %4, align 8
  store i64 %94, i64* %2, align 8
  br label %95

95:                                               ; preds = %93, %91, %75, %59, %43, %26, %10
  %96 = load i64, i64* %2, align 8
  ret i64 %96
}

declare dso_local i64 @check_admin_rights(%struct.TYPE_5__*) #1

declare dso_local i64 @iterate_section_fields(i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @OleInitialize(i32*) #1

declare dso_local i32 @OleUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
