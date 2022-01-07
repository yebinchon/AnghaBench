; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_remove_leading_hyphen_space.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_remove_leading_hyphen_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.buffer = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32, %struct.buffer*)* @remove_leading_hyphen_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_leading_hyphen_space(%struct.sd* %0, i32 %1, %struct.buffer* %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer* %2, %struct.buffer** %6, align 8
  %9 = load %struct.buffer*, %struct.buffer** %6, align 8
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  br label %127

19:                                               ; preds = %14
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = load %struct.buffer*, %struct.buffer** %6, align 8
  %22 = call i32 @append(%struct.sd* %20, %struct.buffer* %21, i8 signext 0)
  br label %23

23:                                               ; preds = %71, %19
  %24 = load %struct.buffer*, %struct.buffer** %6, align 8
  %25 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 123
  br i1 %32, label %33, label %72

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %56, %33
  %35 = load %struct.buffer*, %struct.buffer** %6, align 8
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load %struct.buffer*, %struct.buffer** %6, align 8
  %46 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 125
  br label %54

54:                                               ; preds = %44, %34
  %55 = phi i1 [ false, %34 ], [ %53, %44 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %34

59:                                               ; preds = %54
  %60 = load %struct.buffer*, %struct.buffer** %6, align 8
  %61 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %59
  br label %23

72:                                               ; preds = %23
  %73 = load %struct.buffer*, %struct.buffer** %6, align 8
  %74 = getelementptr inbounds %struct.buffer, %struct.buffer* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 45
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.buffer*, %struct.buffer** %6, align 8
  %85 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %127

86:                                               ; preds = %72
  %87 = load %struct.buffer*, %struct.buffer** %6, align 8
  %88 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8* %92, i8** %8, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.buffer*, %struct.buffer** %6, align 8
  %95 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  %98 = load %struct.sd*, %struct.sd** %4, align 8
  %99 = load %struct.buffer*, %struct.buffer** %6, align 8
  %100 = call i32 @copy_ass(%struct.sd* %98, i8** %8, %struct.buffer* %99)
  br label %101

101:                                              ; preds = %107, %86
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  %110 = load %struct.sd*, %struct.sd** %4, align 8
  %111 = load %struct.buffer*, %struct.buffer** %6, align 8
  %112 = call i32 @copy_ass(%struct.sd* %110, i8** %8, %struct.buffer* %111)
  br label %101

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i8*, i8** %8, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.sd*, %struct.sd** %4, align 8
  %120 = load %struct.buffer*, %struct.buffer** %6, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @append(%struct.sd* %119, %struct.buffer* %120, i8 signext %123)
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  br label %114

127:                                              ; preds = %18, %82, %114
  ret void
}

declare dso_local i32 @append(%struct.sd*, %struct.buffer*, i8 signext) #1

declare dso_local i32 @copy_ass(%struct.sd*, i8**, %struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
