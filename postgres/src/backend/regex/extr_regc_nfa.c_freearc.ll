; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_freearc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_freearc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32, i32* }
%struct.arc = type { i64, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.state*, %struct.state* }
%struct.state = type { %struct.arc*, i32, %struct.arc*, i32, %struct.arc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.arc*)* @freearc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freearc(%struct.nfa* %0, %struct.arc* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca %struct.arc*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store %struct.arc* %1, %struct.arc** %4, align 8
  %8 = load %struct.arc*, %struct.arc** %4, align 8
  %9 = getelementptr inbounds %struct.arc, %struct.arc* %8, i32 0, i32 7
  %10 = load %struct.state*, %struct.state** %9, align 8
  store %struct.state* %10, %struct.state** %5, align 8
  %11 = load %struct.arc*, %struct.arc** %4, align 8
  %12 = getelementptr inbounds %struct.arc, %struct.arc* %11, i32 0, i32 6
  %13 = load %struct.state*, %struct.state** %12, align 8
  store %struct.state* %13, %struct.state** %6, align 8
  %14 = load %struct.arc*, %struct.arc** %4, align 8
  %15 = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.arc*, %struct.arc** %4, align 8
  %21 = call i64 @COLORED(%struct.arc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.nfa*, %struct.nfa** %3, align 8
  %25 = getelementptr inbounds %struct.nfa, %struct.nfa* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.nfa*, %struct.nfa** %3, align 8
  %30 = getelementptr inbounds %struct.nfa, %struct.nfa* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.arc*, %struct.arc** %4, align 8
  %33 = call i32 @uncolorchain(i32 %31, %struct.arc* %32)
  br label %34

34:                                               ; preds = %28, %23, %2
  %35 = load %struct.state*, %struct.state** %5, align 8
  %36 = icmp ne %struct.state* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.arc*, %struct.arc** %4, align 8
  %40 = getelementptr inbounds %struct.arc, %struct.arc* %39, i32 0, i32 2
  %41 = load %struct.arc*, %struct.arc** %40, align 8
  store %struct.arc* %41, %struct.arc** %7, align 8
  %42 = load %struct.arc*, %struct.arc** %7, align 8
  %43 = icmp eq %struct.arc* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.state*, %struct.state** %5, align 8
  %46 = getelementptr inbounds %struct.state, %struct.state* %45, i32 0, i32 4
  %47 = load %struct.arc*, %struct.arc** %46, align 8
  %48 = load %struct.arc*, %struct.arc** %4, align 8
  %49 = icmp eq %struct.arc* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.arc*, %struct.arc** %4, align 8
  %53 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 3
  %54 = load %struct.arc*, %struct.arc** %53, align 8
  %55 = load %struct.state*, %struct.state** %5, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 4
  store %struct.arc* %54, %struct.arc** %56, align 8
  br label %70

57:                                               ; preds = %34
  %58 = load %struct.arc*, %struct.arc** %7, align 8
  %59 = getelementptr inbounds %struct.arc, %struct.arc* %58, i32 0, i32 3
  %60 = load %struct.arc*, %struct.arc** %59, align 8
  %61 = load %struct.arc*, %struct.arc** %4, align 8
  %62 = icmp eq %struct.arc* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.arc*, %struct.arc** %4, align 8
  %66 = getelementptr inbounds %struct.arc, %struct.arc* %65, i32 0, i32 3
  %67 = load %struct.arc*, %struct.arc** %66, align 8
  %68 = load %struct.arc*, %struct.arc** %7, align 8
  %69 = getelementptr inbounds %struct.arc, %struct.arc* %68, i32 0, i32 3
  store %struct.arc* %67, %struct.arc** %69, align 8
  br label %70

70:                                               ; preds = %57, %44
  %71 = load %struct.arc*, %struct.arc** %4, align 8
  %72 = getelementptr inbounds %struct.arc, %struct.arc* %71, i32 0, i32 3
  %73 = load %struct.arc*, %struct.arc** %72, align 8
  %74 = icmp ne %struct.arc* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.arc*, %struct.arc** %4, align 8
  %77 = getelementptr inbounds %struct.arc, %struct.arc* %76, i32 0, i32 3
  %78 = load %struct.arc*, %struct.arc** %77, align 8
  %79 = getelementptr inbounds %struct.arc, %struct.arc* %78, i32 0, i32 2
  %80 = load %struct.arc*, %struct.arc** %79, align 8
  %81 = load %struct.arc*, %struct.arc** %4, align 8
  %82 = icmp eq %struct.arc* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.arc*, %struct.arc** %7, align 8
  %86 = load %struct.arc*, %struct.arc** %4, align 8
  %87 = getelementptr inbounds %struct.arc, %struct.arc* %86, i32 0, i32 3
  %88 = load %struct.arc*, %struct.arc** %87, align 8
  %89 = getelementptr inbounds %struct.arc, %struct.arc* %88, i32 0, i32 2
  store %struct.arc* %85, %struct.arc** %89, align 8
  br label %90

90:                                               ; preds = %75, %70
  %91 = load %struct.state*, %struct.state** %5, align 8
  %92 = getelementptr inbounds %struct.state, %struct.state* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.state*, %struct.state** %6, align 8
  %96 = icmp ne %struct.state* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.arc*, %struct.arc** %4, align 8
  %100 = getelementptr inbounds %struct.arc, %struct.arc* %99, i32 0, i32 4
  %101 = load %struct.arc*, %struct.arc** %100, align 8
  store %struct.arc* %101, %struct.arc** %7, align 8
  %102 = load %struct.arc*, %struct.arc** %7, align 8
  %103 = icmp eq %struct.arc* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %90
  %105 = load %struct.state*, %struct.state** %6, align 8
  %106 = getelementptr inbounds %struct.state, %struct.state* %105, i32 0, i32 2
  %107 = load %struct.arc*, %struct.arc** %106, align 8
  %108 = load %struct.arc*, %struct.arc** %4, align 8
  %109 = icmp eq %struct.arc* %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.arc*, %struct.arc** %4, align 8
  %113 = getelementptr inbounds %struct.arc, %struct.arc* %112, i32 0, i32 5
  %114 = load %struct.arc*, %struct.arc** %113, align 8
  %115 = load %struct.state*, %struct.state** %6, align 8
  %116 = getelementptr inbounds %struct.state, %struct.state* %115, i32 0, i32 2
  store %struct.arc* %114, %struct.arc** %116, align 8
  br label %130

117:                                              ; preds = %90
  %118 = load %struct.arc*, %struct.arc** %7, align 8
  %119 = getelementptr inbounds %struct.arc, %struct.arc* %118, i32 0, i32 5
  %120 = load %struct.arc*, %struct.arc** %119, align 8
  %121 = load %struct.arc*, %struct.arc** %4, align 8
  %122 = icmp eq %struct.arc* %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.arc*, %struct.arc** %4, align 8
  %126 = getelementptr inbounds %struct.arc, %struct.arc* %125, i32 0, i32 5
  %127 = load %struct.arc*, %struct.arc** %126, align 8
  %128 = load %struct.arc*, %struct.arc** %7, align 8
  %129 = getelementptr inbounds %struct.arc, %struct.arc* %128, i32 0, i32 5
  store %struct.arc* %127, %struct.arc** %129, align 8
  br label %130

130:                                              ; preds = %117, %104
  %131 = load %struct.arc*, %struct.arc** %4, align 8
  %132 = getelementptr inbounds %struct.arc, %struct.arc* %131, i32 0, i32 5
  %133 = load %struct.arc*, %struct.arc** %132, align 8
  %134 = icmp ne %struct.arc* %133, null
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load %struct.arc*, %struct.arc** %4, align 8
  %137 = getelementptr inbounds %struct.arc, %struct.arc* %136, i32 0, i32 5
  %138 = load %struct.arc*, %struct.arc** %137, align 8
  %139 = getelementptr inbounds %struct.arc, %struct.arc* %138, i32 0, i32 4
  %140 = load %struct.arc*, %struct.arc** %139, align 8
  %141 = load %struct.arc*, %struct.arc** %4, align 8
  %142 = icmp eq %struct.arc* %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.arc*, %struct.arc** %7, align 8
  %146 = load %struct.arc*, %struct.arc** %4, align 8
  %147 = getelementptr inbounds %struct.arc, %struct.arc* %146, i32 0, i32 5
  %148 = load %struct.arc*, %struct.arc** %147, align 8
  %149 = getelementptr inbounds %struct.arc, %struct.arc* %148, i32 0, i32 4
  store %struct.arc* %145, %struct.arc** %149, align 8
  br label %150

150:                                              ; preds = %135, %130
  %151 = load %struct.state*, %struct.state** %6, align 8
  %152 = getelementptr inbounds %struct.state, %struct.state* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.arc*, %struct.arc** %4, align 8
  %156 = getelementptr inbounds %struct.arc, %struct.arc* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  %157 = load %struct.arc*, %struct.arc** %4, align 8
  %158 = getelementptr inbounds %struct.arc, %struct.arc* %157, i32 0, i32 7
  store %struct.state* null, %struct.state** %158, align 8
  %159 = load %struct.arc*, %struct.arc** %4, align 8
  %160 = getelementptr inbounds %struct.arc, %struct.arc* %159, i32 0, i32 6
  store %struct.state* null, %struct.state** %160, align 8
  %161 = load %struct.arc*, %struct.arc** %4, align 8
  %162 = getelementptr inbounds %struct.arc, %struct.arc* %161, i32 0, i32 5
  store %struct.arc* null, %struct.arc** %162, align 8
  %163 = load %struct.arc*, %struct.arc** %4, align 8
  %164 = getelementptr inbounds %struct.arc, %struct.arc* %163, i32 0, i32 4
  store %struct.arc* null, %struct.arc** %164, align 8
  %165 = load %struct.arc*, %struct.arc** %4, align 8
  %166 = getelementptr inbounds %struct.arc, %struct.arc* %165, i32 0, i32 3
  store %struct.arc* null, %struct.arc** %166, align 8
  %167 = load %struct.arc*, %struct.arc** %4, align 8
  %168 = getelementptr inbounds %struct.arc, %struct.arc* %167, i32 0, i32 2
  store %struct.arc* null, %struct.arc** %168, align 8
  %169 = load %struct.state*, %struct.state** %5, align 8
  %170 = getelementptr inbounds %struct.state, %struct.state* %169, i32 0, i32 0
  %171 = load %struct.arc*, %struct.arc** %170, align 8
  %172 = load %struct.arc*, %struct.arc** %4, align 8
  %173 = getelementptr inbounds %struct.arc, %struct.arc* %172, i32 0, i32 1
  store %struct.arc* %171, %struct.arc** %173, align 8
  %174 = load %struct.arc*, %struct.arc** %4, align 8
  %175 = load %struct.state*, %struct.state** %5, align 8
  %176 = getelementptr inbounds %struct.state, %struct.state* %175, i32 0, i32 0
  store %struct.arc* %174, %struct.arc** %176, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @COLORED(%struct.arc*) #1

declare dso_local i32 @uncolorchain(i32, %struct.arc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
