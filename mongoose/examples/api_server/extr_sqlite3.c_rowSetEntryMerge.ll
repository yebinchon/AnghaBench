; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_rowSetEntryMerge.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_rowSetEntryMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, %struct.RowSetEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RowSetEntry* (%struct.RowSetEntry*, %struct.RowSetEntry*)* @rowSetEntryMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RowSetEntry* @rowSetEntryMerge(%struct.RowSetEntry* %0, %struct.RowSetEntry* %1) #0 {
  %3 = alloca %struct.RowSetEntry*, align 8
  %4 = alloca %struct.RowSetEntry*, align 8
  %5 = alloca %struct.RowSetEntry, align 8
  %6 = alloca %struct.RowSetEntry*, align 8
  store %struct.RowSetEntry* %0, %struct.RowSetEntry** %3, align 8
  store %struct.RowSetEntry* %1, %struct.RowSetEntry** %4, align 8
  store %struct.RowSetEntry* %5, %struct.RowSetEntry** %6, align 8
  br label %7

7:                                                ; preds = %92, %2
  %8 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %9 = icmp ne %struct.RowSetEntry* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %12 = icmp ne %struct.RowSetEntry* %11, null
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ false, %7 ], [ %12, %10 ]
  br i1 %14, label %15, label %93

15:                                               ; preds = %13
  %16 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %17 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %16, i32 0, i32 1
  %18 = load %struct.RowSetEntry*, %struct.RowSetEntry** %17, align 8
  %19 = icmp eq %struct.RowSetEntry* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %22 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %25 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %24, i32 0, i32 1
  %26 = load %struct.RowSetEntry*, %struct.RowSetEntry** %25, align 8
  %27 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %23, %28
  br label %30

30:                                               ; preds = %20, %15
  %31 = phi i1 [ true, %15 ], [ %29, %20 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %35 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %34, i32 0, i32 1
  %36 = load %struct.RowSetEntry*, %struct.RowSetEntry** %35, align 8
  %37 = icmp eq %struct.RowSetEntry* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %30
  %39 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %40 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %43 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %42, i32 0, i32 1
  %44 = load %struct.RowSetEntry*, %struct.RowSetEntry** %43, align 8
  %45 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %41, %46
  br label %48

48:                                               ; preds = %38, %30
  %49 = phi i1 [ true, %30 ], [ %47, %38 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %53 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %56 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %48
  %60 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %61 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %62 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %61, i32 0, i32 1
  store %struct.RowSetEntry* %60, %struct.RowSetEntry** %62, align 8
  %63 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %64 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %63, i32 0, i32 1
  %65 = load %struct.RowSetEntry*, %struct.RowSetEntry** %64, align 8
  store %struct.RowSetEntry* %65, %struct.RowSetEntry** %3, align 8
  %66 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %67 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %66, i32 0, i32 1
  %68 = load %struct.RowSetEntry*, %struct.RowSetEntry** %67, align 8
  store %struct.RowSetEntry* %68, %struct.RowSetEntry** %6, align 8
  br label %92

69:                                               ; preds = %48
  %70 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %71 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %74 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %79 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %80 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %79, i32 0, i32 1
  store %struct.RowSetEntry* %78, %struct.RowSetEntry** %80, align 8
  %81 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %82 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %81, i32 0, i32 1
  %83 = load %struct.RowSetEntry*, %struct.RowSetEntry** %82, align 8
  store %struct.RowSetEntry* %83, %struct.RowSetEntry** %4, align 8
  %84 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %85 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %84, i32 0, i32 1
  %86 = load %struct.RowSetEntry*, %struct.RowSetEntry** %85, align 8
  store %struct.RowSetEntry* %86, %struct.RowSetEntry** %6, align 8
  br label %91

87:                                               ; preds = %69
  %88 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %89 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %88, i32 0, i32 1
  %90 = load %struct.RowSetEntry*, %struct.RowSetEntry** %89, align 8
  store %struct.RowSetEntry* %90, %struct.RowSetEntry** %3, align 8
  br label %91

91:                                               ; preds = %87, %77
  br label %92

92:                                               ; preds = %91, %59
  br label %7

93:                                               ; preds = %13
  %94 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %95 = icmp ne %struct.RowSetEntry* %94, null
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %98 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %97, i32 0, i32 1
  %99 = load %struct.RowSetEntry*, %struct.RowSetEntry** %98, align 8
  %100 = icmp eq %struct.RowSetEntry* %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %103 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %106 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %105, i32 0, i32 1
  %107 = load %struct.RowSetEntry*, %struct.RowSetEntry** %106, align 8
  %108 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sle i64 %104, %109
  br label %111

111:                                              ; preds = %101, %96
  %112 = phi i1 [ true, %96 ], [ %110, %101 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %116 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %117 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %116, i32 0, i32 1
  store %struct.RowSetEntry* %115, %struct.RowSetEntry** %117, align 8
  br label %143

118:                                              ; preds = %93
  %119 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %120 = icmp eq %struct.RowSetEntry* %119, null
  br i1 %120, label %136, label %121

121:                                              ; preds = %118
  %122 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %123 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %122, i32 0, i32 1
  %124 = load %struct.RowSetEntry*, %struct.RowSetEntry** %123, align 8
  %125 = icmp eq %struct.RowSetEntry* %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %128 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %131 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %130, i32 0, i32 1
  %132 = load %struct.RowSetEntry*, %struct.RowSetEntry** %131, align 8
  %133 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %129, %134
  br label %136

136:                                              ; preds = %126, %121, %118
  %137 = phi i1 [ true, %121 ], [ true, %118 ], [ %135, %126 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %141 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %142 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %141, i32 0, i32 1
  store %struct.RowSetEntry* %140, %struct.RowSetEntry** %142, align 8
  br label %143

143:                                              ; preds = %136, %111
  %144 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %5, i32 0, i32 1
  %145 = load %struct.RowSetEntry*, %struct.RowSetEntry** %144, align 8
  ret %struct.RowSetEntry* %145
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
