; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_okcolors.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_okcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }
%struct.colormap = type { %struct.colordesc* }
%struct.colordesc = type { i64, i64, i64, %struct.arc* }
%struct.arc = type { i64, i32, i32, i32, %struct.arc* }

@NOSUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.colormap*)* @okcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @okcolors(%struct.nfa* %0, %struct.colormap* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca %struct.colormap*, align 8
  %5 = alloca %struct.colordesc*, align 8
  %6 = alloca %struct.colordesc*, align 8
  %7 = alloca %struct.colordesc*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store %struct.colormap* %1, %struct.colormap** %4, align 8
  %11 = load %struct.colormap*, %struct.colormap** %4, align 8
  %12 = call %struct.colordesc* @CDEND(%struct.colormap* %11)
  store %struct.colordesc* %12, %struct.colordesc** %6, align 8
  %13 = load %struct.colormap*, %struct.colormap** %4, align 8
  %14 = getelementptr inbounds %struct.colormap, %struct.colormap* %13, i32 0, i32 0
  %15 = load %struct.colordesc*, %struct.colordesc** %14, align 8
  store %struct.colordesc* %15, %struct.colordesc** %5, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %171, %2
  %17 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %18 = load %struct.colordesc*, %struct.colordesc** %6, align 8
  %19 = icmp ult %struct.colordesc* %17, %18
  br i1 %19, label %20, label %176

20:                                               ; preds = %16
  %21 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %22 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %25 = call i64 @UNUSEDCOLOR(%struct.colordesc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @NOSUB, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %20
  br label %170

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %169

37:                                               ; preds = %32
  %38 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %39 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %105

42:                                               ; preds = %37
  %43 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %44 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %105

47:                                               ; preds = %42
  %48 = load i64, i64* @NOSUB, align 8
  %49 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %50 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.colormap*, %struct.colormap** %4, align 8
  %52 = getelementptr inbounds %struct.colormap, %struct.colormap* %51, i32 0, i32 0
  %53 = load %struct.colordesc*, %struct.colordesc** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %53, i64 %54
  store %struct.colordesc* %55, %struct.colordesc** %7, align 8
  %56 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %57 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %47
  %61 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %62 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br label %65

65:                                               ; preds = %60, %47
  %66 = phi i1 [ true, %47 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %70 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i64, i64* @NOSUB, align 8
  %77 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %78 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %84, %65
  %80 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %81 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %80, i32 0, i32 3
  %82 = load %struct.arc*, %struct.arc** %81, align 8
  store %struct.arc* %82, %struct.arc** %8, align 8
  %83 = icmp ne %struct.arc* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.arc*, %struct.arc** %8, align 8
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.colormap*, %struct.colormap** %4, align 8
  %93 = load %struct.arc*, %struct.arc** %8, align 8
  %94 = call i32 @uncolorchain(%struct.colormap* %92, %struct.arc* %93)
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.arc*, %struct.arc** %8, align 8
  %97 = getelementptr inbounds %struct.arc, %struct.arc* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.colormap*, %struct.colormap** %4, align 8
  %99 = load %struct.arc*, %struct.arc** %8, align 8
  %100 = call i32 @colorchain(%struct.colormap* %98, %struct.arc* %99)
  br label %79

101:                                              ; preds = %79
  %102 = load %struct.colormap*, %struct.colormap** %4, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @freecolor(%struct.colormap* %102, i64 %103)
  br label %168

105:                                              ; preds = %42, %37
  %106 = load i64, i64* @NOSUB, align 8
  %107 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %108 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.colormap*, %struct.colormap** %4, align 8
  %110 = getelementptr inbounds %struct.colormap, %struct.colormap* %109, i32 0, i32 0
  %111 = load %struct.colordesc*, %struct.colordesc** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %111, i64 %112
  store %struct.colordesc* %113, %struct.colordesc** %7, align 8
  %114 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %115 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %105
  %119 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %120 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br label %123

123:                                              ; preds = %118, %105
  %124 = phi i1 [ true, %105 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %128 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i64, i64* @NOSUB, align 8
  %135 = load %struct.colordesc*, %struct.colordesc** %7, align 8
  %136 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %138 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %137, i32 0, i32 3
  %139 = load %struct.arc*, %struct.arc** %138, align 8
  store %struct.arc* %139, %struct.arc** %8, align 8
  br label %140

140:                                              ; preds = %163, %123
  %141 = load %struct.arc*, %struct.arc** %8, align 8
  %142 = icmp ne %struct.arc* %141, null
  br i1 %142, label %143, label %167

143:                                              ; preds = %140
  %144 = load %struct.arc*, %struct.arc** %8, align 8
  %145 = getelementptr inbounds %struct.arc, %struct.arc* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %9, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.nfa*, %struct.nfa** %3, align 8
  %152 = load %struct.arc*, %struct.arc** %8, align 8
  %153 = getelementptr inbounds %struct.arc, %struct.arc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.arc*, %struct.arc** %8, align 8
  %157 = getelementptr inbounds %struct.arc, %struct.arc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.arc*, %struct.arc** %8, align 8
  %160 = getelementptr inbounds %struct.arc, %struct.arc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @newarc(%struct.nfa* %151, i32 %154, i64 %155, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %143
  %164 = load %struct.arc*, %struct.arc** %8, align 8
  %165 = getelementptr inbounds %struct.arc, %struct.arc* %164, i32 0, i32 4
  %166 = load %struct.arc*, %struct.arc** %165, align 8
  store %struct.arc* %166, %struct.arc** %8, align 8
  br label %140

167:                                              ; preds = %140
  br label %168

168:                                              ; preds = %167, %101
  br label %169

169:                                              ; preds = %168, %36
  br label %170

170:                                              ; preds = %169, %31
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %173 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %172, i32 1
  store %struct.colordesc* %173, %struct.colordesc** %5, align 8
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %9, align 8
  br label %16

176:                                              ; preds = %16
  ret void
}

declare dso_local %struct.colordesc* @CDEND(%struct.colormap*) #1

declare dso_local i64 @UNUSEDCOLOR(%struct.colordesc*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uncolorchain(%struct.colormap*, %struct.arc*) #1

declare dso_local i32 @colorchain(%struct.colormap*, %struct.arc*) #1

declare dso_local i32 @freecolor(%struct.colormap*, i64) #1

declare dso_local i32 @newarc(%struct.nfa*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
