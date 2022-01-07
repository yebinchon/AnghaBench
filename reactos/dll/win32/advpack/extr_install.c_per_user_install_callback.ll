; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_per_user_install_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_per_user_install_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@per_user_install_callback.disp_name = internal constant [12 x i8] c"DisplayName\00", align 1
@per_user_install_callback.version = internal constant [8 x i8] c"Version\00", align 1
@per_user_install_callback.is_installed = internal constant [12 x i8] c"IsInstalled\00", align 1
@per_user_install_callback.comp_id = internal constant [12 x i8] c"ComponentID\00", align 1
@per_user_install_callback.guid = internal constant [5 x i8] c"GUID\00", align 1
@per_user_install_callback.locale = internal constant [7 x i8] c"Locale\00", align 1
@per_user_install_callback.stub_path = internal constant [9 x i8] c"StubPath\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @per_user_install_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @per_user_install_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 7
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @SetupGetLineTextW(i32* null, i32 %13, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @per_user_install_callback.disp_name, i64 0, i64 0), i32 %16, i32 %19, i32* %9)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @SetupGetLineTextW(i32* null, i32 %21, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @per_user_install_callback.version, i64 0, i64 0), i32 %24, i32 %27, i32* %9)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @SetupFindFirstLineW(i32 %29, i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @per_user_install_callback.is_installed, i64 0, i64 0), i32* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %35 = ptrtoint i64* %34 to i32
  %36 = call i32 @SetupGetIntField(i32* %8, i32 1, i32 %35)
  br label %37

37:                                               ; preds = %33, %3
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @SetupGetLineTextW(i32* null, i32 %38, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @per_user_install_callback.comp_id, i64 0, i64 0), i32 %41, i32 %44, i32* %9)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @SetupGetLineTextW(i32* null, i32 %46, i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @per_user_install_callback.guid, i64 0, i64 0), i32 %49, i32 %52, i32* %9)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @SetupGetLineTextW(i32* null, i32 %54, i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @per_user_install_callback.locale, i64 0, i64 0), i32 %57, i32 %60, i32* %9)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @SetupGetLineTextW(i32* null, i32 %62, i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @per_user_install_callback.stub_path, i64 0, i64 0), i32 %65, i32 %68, i32* %9)
  %70 = call i32 @SetPerUserSecValuesW(%struct.TYPE_3__* %7)
  ret i32 %70
}

declare dso_local i32 @SetupGetLineTextW(i32*, i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @SetupFindFirstLineW(i32, i32, i8*, i32*) #1

declare dso_local i32 @SetupGetIntField(i32*, i32, i32) #1

declare dso_local i32 @SetPerUserSecValuesW(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
