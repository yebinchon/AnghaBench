; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_defaults.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_option = type { i32, i64, i32, i32, i32 }
%struct.idmap_config = type { i32 }

@g_options = common dso_local global %struct.config_option* null, align 8
@NO_ERROR = common dso_local global i32 0, align 4
@TYPE_INT = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"failed to parse default value of %s=\22%s\22: expected a number\0A\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"failed to parse default value of %s=\22%s\22: buffer overflow > %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap_config*)* @config_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_defaults(%struct.idmap_config* %0) #0 {
  %2 = alloca %struct.idmap_config*, align 8
  %3 = alloca %struct.config_option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.idmap_config* %0, %struct.idmap_config** %2, align 8
  %8 = load %struct.config_option*, %struct.config_option** @g_options, align 8
  %9 = call i32 @ARRAYSIZE(%struct.config_option* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @NO_ERROR, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %75, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %11
  %16 = load %struct.config_option*, %struct.config_option** @g_options, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.config_option, %struct.config_option* %16, i64 %18
  store %struct.config_option* %19, %struct.config_option** %3, align 8
  %20 = load %struct.idmap_config*, %struct.idmap_config** %2, align 8
  %21 = bitcast %struct.idmap_config* %20 to i8*
  %22 = load %struct.config_option*, %struct.config_option** %3, align 8
  %23 = getelementptr inbounds %struct.config_option, %struct.config_option* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %5, align 8
  %27 = load %struct.config_option*, %struct.config_option** %3, align 8
  %28 = getelementptr inbounds %struct.config_option, %struct.config_option* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TYPE_INT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %15
  %33 = load %struct.config_option*, %struct.config_option** %3, align 8
  %34 = getelementptr inbounds %struct.config_option, %struct.config_option* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @parse_uint(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.config_option*, %struct.config_option** %3, align 8
  %43 = getelementptr inbounds %struct.config_option, %struct.config_option* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.config_option*, %struct.config_option** %3, align 8
  %46 = getelementptr inbounds %struct.config_option, %struct.config_option* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  br label %78

49:                                               ; preds = %32
  br label %74

50:                                               ; preds = %15
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.config_option*, %struct.config_option** %3, align 8
  %53 = getelementptr inbounds %struct.config_option, %struct.config_option* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.config_option*, %struct.config_option** %3, align 8
  %56 = getelementptr inbounds %struct.config_option, %struct.config_option* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @StringCchCopyA(i8* %51, i32 %54, i32 %57)
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %50
  %62 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.config_option*, %struct.config_option** %3, align 8
  %64 = getelementptr inbounds %struct.config_option, %struct.config_option* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.config_option*, %struct.config_option** %3, align 8
  %67 = getelementptr inbounds %struct.config_option, %struct.config_option* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.config_option*, %struct.config_option** %3, align 8
  %70 = getelementptr inbounds %struct.config_option, %struct.config_option* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %71)
  br label %78

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %11

78:                                               ; preds = %61, %40, %11
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @ARRAYSIZE(%struct.config_option*) #1

declare dso_local i32 @parse_uint(i32, i32*) #1

declare dso_local i32 @eprintf(i8*, i32, i32, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @StringCchCopyA(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
