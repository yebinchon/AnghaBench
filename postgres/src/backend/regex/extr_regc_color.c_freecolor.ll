; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_freecolor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_freecolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { i64, i64, %struct.colordesc* }
%struct.colordesc = type { i64, i64, i64, i32, i32* }

@WHITE = common dso_local global i64 0, align 8
@NOSUB = common dso_local global i64 0, align 8
@FREECOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.colormap*, i64)* @freecolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freecolor(%struct.colormap* %0, i64 %1) #0 {
  %3 = alloca %struct.colormap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.colordesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.colormap* %0, %struct.colormap** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.colormap*, %struct.colormap** %3, align 8
  %9 = getelementptr inbounds %struct.colormap, %struct.colormap* %8, i32 0, i32 2
  %10 = load %struct.colordesc*, %struct.colordesc** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %10, i64 %11
  store %struct.colordesc* %12, %struct.colordesc** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp uge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @WHITE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %190

21:                                               ; preds = %2
  %22 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %23 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %29 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NOSUB, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %36 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %42 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* @FREECOL, align 4
  %48 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %49 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.colormap*, %struct.colormap** %3, align 8
  %52 = getelementptr inbounds %struct.colormap, %struct.colormap* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %174

55:                                               ; preds = %21
  br label %56

56:                                               ; preds = %74, %55
  %57 = load %struct.colormap*, %struct.colormap** %3, align 8
  %58 = getelementptr inbounds %struct.colormap, %struct.colormap* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WHITE, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.colormap*, %struct.colormap** %3, align 8
  %64 = getelementptr inbounds %struct.colormap, %struct.colormap* %63, i32 0, i32 2
  %65 = load %struct.colordesc*, %struct.colordesc** %64, align 8
  %66 = load %struct.colormap*, %struct.colormap** %3, align 8
  %67 = getelementptr inbounds %struct.colormap, %struct.colormap* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %65, i64 %68
  %70 = call i64 @UNUSEDCOLOR(%struct.colordesc* %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %62, %56
  %73 = phi i1 [ false, %56 ], [ %71, %62 ]
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = load %struct.colormap*, %struct.colormap** %3, align 8
  %76 = getelementptr inbounds %struct.colormap, %struct.colormap* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %76, align 8
  br label %56

79:                                               ; preds = %72
  %80 = load %struct.colormap*, %struct.colormap** %3, align 8
  %81 = getelementptr inbounds %struct.colormap, %struct.colormap* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %94, %79
  %87 = load %struct.colormap*, %struct.colormap** %3, align 8
  %88 = getelementptr inbounds %struct.colormap, %struct.colormap* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.colormap*, %struct.colormap** %3, align 8
  %91 = getelementptr inbounds %struct.colormap, %struct.colormap* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  %95 = load %struct.colormap*, %struct.colormap** %3, align 8
  %96 = getelementptr inbounds %struct.colormap, %struct.colormap* %95, i32 0, i32 2
  %97 = load %struct.colordesc*, %struct.colordesc** %96, align 8
  %98 = load %struct.colormap*, %struct.colormap** %3, align 8
  %99 = getelementptr inbounds %struct.colormap, %struct.colormap* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %97, i64 %100
  %102 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.colormap*, %struct.colormap** %3, align 8
  %105 = getelementptr inbounds %struct.colormap, %struct.colormap* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %86

106:                                              ; preds = %86
  %107 = load %struct.colormap*, %struct.colormap** %3, align 8
  %108 = getelementptr inbounds %struct.colormap, %struct.colormap* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %173

111:                                              ; preds = %106
  %112 = load %struct.colormap*, %struct.colormap** %3, align 8
  %113 = getelementptr inbounds %struct.colormap, %struct.colormap* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.colormap*, %struct.colormap** %3, align 8
  %116 = getelementptr inbounds %struct.colormap, %struct.colormap* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.colormap*, %struct.colormap** %3, align 8
  %122 = getelementptr inbounds %struct.colormap, %struct.colormap* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %6, align 8
  %124 = load %struct.colormap*, %struct.colormap** %3, align 8
  %125 = getelementptr inbounds %struct.colormap, %struct.colormap* %124, i32 0, i32 2
  %126 = load %struct.colordesc*, %struct.colordesc** %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %126, i64 %127
  %129 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %7, align 8
  br label %131

131:                                              ; preds = %171, %111
  %132 = load i64, i64* %7, align 8
  %133 = icmp ugt i64 %132, 0
  br i1 %133, label %134, label %172

134:                                              ; preds = %131
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.colormap*, %struct.colormap** %3, align 8
  %137 = getelementptr inbounds %struct.colormap, %struct.colormap* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %135, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = load %struct.colormap*, %struct.colormap** %3, align 8
  %142 = getelementptr inbounds %struct.colormap, %struct.colormap* %141, i32 0, i32 2
  %143 = load %struct.colordesc*, %struct.colordesc** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %143, i64 %144
  %146 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %7, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.colormap*, %struct.colormap** %3, align 8
  %150 = getelementptr inbounds %struct.colormap, %struct.colormap* %149, i32 0, i32 2
  %151 = load %struct.colordesc*, %struct.colordesc** %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %151, i64 %152
  %154 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %153, i32 0, i32 0
  store i64 %148, i64* %154, align 8
  br label %171

155:                                              ; preds = %134
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.colormap*, %struct.colormap** %3, align 8
  %158 = getelementptr inbounds %struct.colormap, %struct.colormap* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 %156, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i64, i64* %7, align 8
  store i64 %163, i64* %6, align 8
  %164 = load %struct.colormap*, %struct.colormap** %3, align 8
  %165 = getelementptr inbounds %struct.colormap, %struct.colormap* %164, i32 0, i32 2
  %166 = load %struct.colordesc*, %struct.colordesc** %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %166, i64 %167
  %169 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %7, align 8
  br label %171

171:                                              ; preds = %155, %140
  br label %131

172:                                              ; preds = %131
  br label %173

173:                                              ; preds = %172, %106
  br label %190

174:                                              ; preds = %21
  %175 = load %struct.colormap*, %struct.colormap** %3, align 8
  %176 = getelementptr inbounds %struct.colormap, %struct.colormap* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %179 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %181 = load %struct.colormap*, %struct.colormap** %3, align 8
  %182 = getelementptr inbounds %struct.colormap, %struct.colormap* %181, i32 0, i32 2
  %183 = load %struct.colordesc*, %struct.colordesc** %182, align 8
  %184 = ptrtoint %struct.colordesc* %180 to i64
  %185 = ptrtoint %struct.colordesc* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 40
  %188 = load %struct.colormap*, %struct.colormap** %3, align 8
  %189 = getelementptr inbounds %struct.colormap, %struct.colormap* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %20, %174, %173
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @UNUSEDCOLOR(%struct.colordesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
