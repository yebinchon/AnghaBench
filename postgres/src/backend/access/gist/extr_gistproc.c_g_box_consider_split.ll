; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_g_box_consider_split.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_g_box_consider_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@LIMIT_RATIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i64, i32, i64, i32)* @g_box_consider_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_box_consider_split(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = sdiv i32 %23, 2
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %13, align 4
  br label %43

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 2
  %34 = icmp sle i32 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %13, align 4
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %37, %35
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @Min(i32 %49, i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @float4_div(i32 %51, i32 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @LIMIT_RATIO, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %173

59:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @float8_mi(i64 %67, i64 %72)
  store i64 %73, i64* %17, align 8
  br label %86

74:                                               ; preds = %59
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @float8_mi(i64 %79, i64 %84)
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %74, %62
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i64 @float8_mi(i64 %87, i64 %88)
  %90 = load i64, i64* %17, align 8
  %91 = call i64 @float8_div(i64 %89, i64 %90)
  store i64 %91, i64* %16, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 1, i32* %18, align 4
  br label %148

97:                                               ; preds = %86
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load i64, i64* %16, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115, %103
  store i32 1, i32* %18, align 4
  br label %122

122:                                              ; preds = %121, %115, %109
  br label %147

123:                                              ; preds = %97
  %124 = load i64, i64* %16, align 8
  %125 = call i64 @non_negative(i64 %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @non_negative(i64 %128)
  %130 = icmp slt i64 %125, %129
  br i1 %130, label %145, label %131

131:                                              ; preds = %123
  %132 = load i64, i64* %17, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i64, i64* %16, align 8
  %139 = call i64 @non_negative(i64 %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @non_negative(i64 %142)
  %144 = icmp sle i64 %139, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137, %123
  store i32 1, i32* %18, align 4
  br label %146

146:                                              ; preds = %145, %137, %131
  br label %147

147:                                              ; preds = %146, %122
  br label %148

148:                                              ; preds = %147, %96
  %149 = load i32, i32* %18, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  %154 = load i64, i64* %15, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 4
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %17, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %16, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 7
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 6
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %151, %148
  br label %173

173:                                              ; preds = %172, %43
  ret void
}

declare dso_local i64 @float4_div(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @float8_mi(i64, i64) #1

declare dso_local i64 @float8_div(i64, i64) #1

declare dso_local i64 @non_negative(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
