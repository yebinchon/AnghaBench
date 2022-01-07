; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_norwegian.c_norwegian_ISO_8859_1_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_norwegian.c_norwegian_ISO_8859_1_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @norwegian_ISO_8859_1_stem(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = call i32 @r_mark_regions(%struct.SN_env* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %126

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = call i32 @r_main_suffix(%struct.SN_env* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  br label %59

53:                                               ; preds = %26
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %126

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %52
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = call i32 @r_consonant_pair(%struct.SN_env* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %86

80:                                               ; preds = %59
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %126

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %79
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = call i32 @r_other_suffix(%struct.SN_env* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %86
  br label %113

107:                                              ; preds = %86
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %2, align 4
  br label %126

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %106
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  store i32 1, i32* %2, align 4
  br label %126

126:                                              ; preds = %113, %110, %83, %56, %23
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_main_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_consonant_pair(%struct.SN_env*) #1

declare dso_local i32 @r_other_suffix(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
