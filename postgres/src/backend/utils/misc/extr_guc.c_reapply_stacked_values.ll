; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_reapply_stacked_values.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_reapply_stacked_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i8*, %struct.TYPE_13__* }
%struct.config_string = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }

@GUC_ACTION_SAVE = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@GUC_ACTION_SET = common dso_local global i32 0, align 4
@GUC_ACTION_LOCAL = common dso_local global i32 0, align 4
@PGC_S_SESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_generic*, %struct.config_string*, %struct.TYPE_13__*, i8*, i32, i32)* @reapply_stacked_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reapply_stacked_values(%struct.config_generic* %0, %struct.config_string* %1, %struct.TYPE_13__* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.config_generic*, align 8
  %8 = alloca %struct.config_string*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.config_generic* %0, %struct.config_generic** %7, align 8
  store %struct.config_string* %1, %struct.config_string** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %16 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %19 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %14, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %103

23:                                               ; preds = %6
  %24 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %25 = load %struct.config_string*, %struct.config_string** %8, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  call void @reapply_stacked_values(%struct.config_generic* %24, %struct.config_string* %25, %struct.TYPE_13__* %28, i8* %33, i32 %36, i32 %39)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %88 [
    i32 130, label %43
    i32 129, label %51
    i32 131, label %59
    i32 128, label %67
  ]

43:                                               ; preds = %23
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @GUC_ACTION_SAVE, align 4
  %49 = load i32, i32* @WARNING, align 4
  %50 = call i32 @set_config_option(i8* %44, i8* %45, i32 %46, i32 %47, i32 %48, i32 1, i32 %49, i32 0)
  br label %88

51:                                               ; preds = %23
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @GUC_ACTION_SET, align 4
  %57 = load i32, i32* @WARNING, align 4
  %58 = call i32 @set_config_option(i8* %52, i8* %53, i32 %54, i32 %55, i32 %56, i32 1, i32 %57, i32 0)
  br label %88

59:                                               ; preds = %23
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @GUC_ACTION_LOCAL, align 4
  %65 = load i32, i32* @WARNING, align 4
  %66 = call i32 @set_config_option(i8* %60, i8* %61, i32 %62, i32 %63, i32 %64, i32 1, i32 %65, i32 0)
  br label %88

67:                                               ; preds = %23
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PGC_S_SESSION, align 4
  %78 = load i32, i32* @GUC_ACTION_SET, align 4
  %79 = load i32, i32* @WARNING, align 4
  %80 = call i32 @set_config_option(i8* %68, i8* %73, i32 %76, i32 %77, i32 %78, i32 1, i32 %79, i32 0)
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @GUC_ACTION_LOCAL, align 4
  %86 = load i32, i32* @WARNING, align 4
  %87 = call i32 @set_config_option(i8* %81, i8* %82, i32 %83, i32 %84, i32 %85, i32 1, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %23, %67, %59, %51, %43
  %89 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %90 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %93 = icmp ne %struct.TYPE_13__* %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %99 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %88
  br label %134

103:                                              ; preds = %6
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.config_string*, %struct.config_string** %8, align 8
  %106 = getelementptr inbounds %struct.config_string, %struct.config_string* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %104, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.config_string*, %struct.config_string** %8, align 8
  %112 = getelementptr inbounds %struct.config_string, %struct.config_string* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %110, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.config_string*, %struct.config_string** %8, align 8
  %119 = getelementptr inbounds %struct.config_string, %struct.config_string* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %116, %109, %103
  %124 = load i8*, i8** %13, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @GUC_ACTION_SET, align 4
  %129 = load i32, i32* @WARNING, align 4
  %130 = call i32 @set_config_option(i8* %124, i8* %125, i32 %126, i32 %127, i32 %128, i32 1, i32 %129, i32 0)
  %131 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %132 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %131, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %132, align 8
  br label %133

133:                                              ; preds = %123, %116
  br label %134

134:                                              ; preds = %133, %102
  ret void
}

declare dso_local i32 @set_config_option(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
