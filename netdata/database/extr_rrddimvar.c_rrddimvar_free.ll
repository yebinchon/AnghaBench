; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrddimvar.c_rrddimvar_free.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrddimvar.c_rrddimvar_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32 }

@D_VARIABLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"RRDDIMSET free for chart id '%s' name '%s', dimension id '%s', name '%s', prefix='%s', suffix='%s'\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"RRDDIMSET removing first entry for chart id '%s' name '%s', dimension id '%s', name '%s'\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"RRDDIMSET removing non-first entry for chart id '%s' name '%s', dimension id '%s', name '%s'\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"RRDDIMVAR '%s' not found in dimension '%s/%s' variables linked list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrddimvar_free(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* @D_VARIABLES, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 (i32, i8*, i8*, i32, i32, i32, ...) @debug(i32 %12, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18, i32 %21, i32 %24, %struct.TYPE_8__* %27, %struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = call i32 @rrddimvar_free_variables(%struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = icmp eq %struct.TYPE_8__* %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %1
  %40 = load i32, i32* @D_VARIABLES, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, i8*, i32, i32, i32, ...) @debug(i32 %40, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %58, align 8
  br label %114

59:                                               ; preds = %1
  %60 = load i32, i32* @D_VARIABLES, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, i8*, i32, i32, i32, ...) @debug(i32 %60, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %5, align 8
  br label %77

77:                                               ; preds = %89, %59
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = icmp ne %struct.TYPE_8__* %83, %84
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi i1 [ false, %77 ], [ %85, %80 ]
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %5, align 8
  br label %77

93:                                               ; preds = %86
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = icmp ne %struct.TYPE_8__* %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %99, i8* %102, i32 %105)
  br label %113

107:                                              ; preds = %93
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %112, align 8
  br label %113

113:                                              ; preds = %107, %96
  br label %114

114:                                              ; preds = %113, %39
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = call i32 @freez(%struct.TYPE_8__* %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = call i32 @freez(%struct.TYPE_8__* %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = call i32 @freez(%struct.TYPE_8__* %123)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @rrddimvar_free_variables(%struct.TYPE_8__*) #1

declare dso_local i32 @error(i8*, i32, i8*, i32) #1

declare dso_local i32 @freez(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
