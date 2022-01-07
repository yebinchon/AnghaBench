; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_breakconstraintloop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_breakconstraintloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32, %struct.state* }
%struct.state = type { i64, %struct.arc*, %struct.state*, %struct.state* }
%struct.arc = type { %struct.state*, %struct.arc*, %struct.state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*)* @breakconstraintloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breakconstraintloop(%struct.nfa* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca %struct.arc*, align 8
  %11 = alloca %struct.arc*, align 8
  %12 = alloca %struct.arc*, align 8
  %13 = alloca i32, align 4
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store %struct.state* %1, %struct.state** %4, align 8
  store %struct.arc* null, %struct.arc** %10, align 8
  %14 = load %struct.state*, %struct.state** %4, align 8
  store %struct.state* %14, %struct.state** %5, align 8
  br label %15

15:                                               ; preds = %63, %2
  %16 = load %struct.state*, %struct.state** %5, align 8
  %17 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 2
  %18 = load %struct.state*, %struct.state** %17, align 8
  store %struct.state* %18, %struct.state** %9, align 8
  %19 = load %struct.state*, %struct.state** %9, align 8
  %20 = load %struct.state*, %struct.state** %5, align 8
  %21 = icmp ne %struct.state* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.arc*, %struct.arc** %10, align 8
  %25 = icmp eq %struct.arc* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  %27 = load %struct.state*, %struct.state** %5, align 8
  %28 = getelementptr inbounds %struct.state, %struct.state* %27, i32 0, i32 1
  %29 = load %struct.arc*, %struct.arc** %28, align 8
  store %struct.arc* %29, %struct.arc** %11, align 8
  br label %30

30:                                               ; preds = %48, %26
  %31 = load %struct.arc*, %struct.arc** %11, align 8
  %32 = icmp ne %struct.arc* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.arc*, %struct.arc** %11, align 8
  %35 = getelementptr inbounds %struct.arc, %struct.arc* %34, i32 0, i32 0
  %36 = load %struct.state*, %struct.state** %35, align 8
  %37 = load %struct.state*, %struct.state** %9, align 8
  %38 = icmp eq %struct.state* %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.arc*, %struct.arc** %11, align 8
  %41 = call i64 @isconstraintarc(%struct.arc* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.arc*, %struct.arc** %11, align 8
  store %struct.arc* %44, %struct.arc** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %43, %39, %33
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.arc*, %struct.arc** %11, align 8
  %50 = getelementptr inbounds %struct.arc, %struct.arc* %49, i32 0, i32 1
  %51 = load %struct.arc*, %struct.arc** %50, align 8
  store %struct.arc* %51, %struct.arc** %11, align 8
  br label %30

52:                                               ; preds = %30
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store %struct.arc* null, %struct.arc** %10, align 8
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %15
  %62 = load %struct.state*, %struct.state** %9, align 8
  store %struct.state* %62, %struct.state** %5, align 8
  br label %63

63:                                               ; preds = %61
  %64 = load %struct.state*, %struct.state** %5, align 8
  %65 = load %struct.state*, %struct.state** %4, align 8
  %66 = icmp ne %struct.state* %64, %65
  br i1 %66, label %15, label %67

67:                                               ; preds = %63
  %68 = load %struct.arc*, %struct.arc** %10, align 8
  %69 = icmp ne %struct.arc* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.arc*, %struct.arc** %10, align 8
  %72 = getelementptr inbounds %struct.arc, %struct.arc* %71, i32 0, i32 2
  %73 = load %struct.state*, %struct.state** %72, align 8
  store %struct.state* %73, %struct.state** %6, align 8
  %74 = load %struct.arc*, %struct.arc** %10, align 8
  %75 = getelementptr inbounds %struct.arc, %struct.arc* %74, i32 0, i32 0
  %76 = load %struct.state*, %struct.state** %75, align 8
  store %struct.state* %76, %struct.state** %7, align 8
  %77 = load %struct.state*, %struct.state** %7, align 8
  %78 = load %struct.state*, %struct.state** %6, align 8
  %79 = getelementptr inbounds %struct.state, %struct.state* %78, i32 0, i32 2
  %80 = load %struct.state*, %struct.state** %79, align 8
  %81 = icmp eq %struct.state* %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  br label %89

84:                                               ; preds = %67
  %85 = load %struct.state*, %struct.state** %4, align 8
  store %struct.state* %85, %struct.state** %6, align 8
  %86 = load %struct.state*, %struct.state** %4, align 8
  %87 = getelementptr inbounds %struct.state, %struct.state* %86, i32 0, i32 2
  %88 = load %struct.state*, %struct.state** %87, align 8
  store %struct.state* %88, %struct.state** %7, align 8
  br label %89

89:                                               ; preds = %84, %70
  %90 = load %struct.nfa*, %struct.nfa** %3, align 8
  %91 = getelementptr inbounds %struct.nfa, %struct.nfa* %90, i32 0, i32 1
  %92 = load %struct.state*, %struct.state** %91, align 8
  store %struct.state* %92, %struct.state** %5, align 8
  br label %93

93:                                               ; preds = %99, %89
  %94 = load %struct.state*, %struct.state** %5, align 8
  %95 = icmp ne %struct.state* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.state*, %struct.state** %5, align 8
  %98 = getelementptr inbounds %struct.state, %struct.state* %97, i32 0, i32 2
  store %struct.state* null, %struct.state** %98, align 8
  br label %99

99:                                               ; preds = %96
  %100 = load %struct.state*, %struct.state** %5, align 8
  %101 = getelementptr inbounds %struct.state, %struct.state* %100, i32 0, i32 3
  %102 = load %struct.state*, %struct.state** %101, align 8
  store %struct.state* %102, %struct.state** %5, align 8
  br label %93

103:                                              ; preds = %93
  %104 = load %struct.nfa*, %struct.nfa** %3, align 8
  %105 = call %struct.state* @newstate(%struct.nfa* %104)
  store %struct.state* %105, %struct.state** %8, align 8
  %106 = load %struct.state*, %struct.state** %8, align 8
  %107 = icmp eq %struct.state* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = call i32 (...) @NISERR()
  %110 = call i32 @assert(i32 %109)
  br label %173

111:                                              ; preds = %103
  %112 = load %struct.nfa*, %struct.nfa** %3, align 8
  %113 = load %struct.state*, %struct.state** %7, align 8
  %114 = load %struct.state*, %struct.state** %8, align 8
  %115 = load %struct.state*, %struct.state** %6, align 8
  %116 = load %struct.arc*, %struct.arc** %10, align 8
  %117 = load %struct.nfa*, %struct.nfa** %3, align 8
  %118 = getelementptr inbounds %struct.nfa, %struct.nfa* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @clonesuccessorstates(%struct.nfa* %112, %struct.state* %113, %struct.state* %114, %struct.state* %115, %struct.arc* %116, i32* null, i32* null, i32 %119)
  %121 = call i32 (...) @NISERR()
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %173

124:                                              ; preds = %111
  %125 = load %struct.state*, %struct.state** %8, align 8
  %126 = getelementptr inbounds %struct.state, %struct.state* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.nfa*, %struct.nfa** %3, align 8
  %131 = load %struct.state*, %struct.state** %8, align 8
  %132 = call i32 @freestate(%struct.nfa* %130, %struct.state* %131)
  store %struct.state* null, %struct.state** %8, align 8
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.state*, %struct.state** %6, align 8
  %135 = getelementptr inbounds %struct.state, %struct.state* %134, i32 0, i32 1
  %136 = load %struct.arc*, %struct.arc** %135, align 8
  store %struct.arc* %136, %struct.arc** %11, align 8
  br label %137

137:                                              ; preds = %171, %133
  %138 = load %struct.arc*, %struct.arc** %11, align 8
  %139 = icmp ne %struct.arc* %138, null
  br i1 %139, label %140, label %173

140:                                              ; preds = %137
  %141 = load %struct.arc*, %struct.arc** %11, align 8
  %142 = getelementptr inbounds %struct.arc, %struct.arc* %141, i32 0, i32 1
  %143 = load %struct.arc*, %struct.arc** %142, align 8
  store %struct.arc* %143, %struct.arc** %12, align 8
  %144 = load %struct.arc*, %struct.arc** %11, align 8
  %145 = getelementptr inbounds %struct.arc, %struct.arc* %144, i32 0, i32 0
  %146 = load %struct.state*, %struct.state** %145, align 8
  %147 = load %struct.state*, %struct.state** %7, align 8
  %148 = icmp eq %struct.state* %146, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %140
  %150 = load %struct.arc*, %struct.arc** %11, align 8
  %151 = call i64 @isconstraintarc(%struct.arc* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load %struct.state*, %struct.state** %8, align 8
  %155 = icmp ne %struct.state* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.nfa*, %struct.nfa** %3, align 8
  %158 = load %struct.arc*, %struct.arc** %11, align 8
  %159 = load %struct.state*, %struct.state** %6, align 8
  %160 = load %struct.state*, %struct.state** %8, align 8
  %161 = call i32 @cparc(%struct.nfa* %157, %struct.arc* %158, %struct.state* %159, %struct.state* %160)
  br label %162

162:                                              ; preds = %156, %153
  %163 = load %struct.nfa*, %struct.nfa** %3, align 8
  %164 = load %struct.arc*, %struct.arc** %11, align 8
  %165 = call i32 @freearc(%struct.nfa* %163, %struct.arc* %164)
  %166 = call i32 (...) @NISERR()
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %173

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %149, %140
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.arc*, %struct.arc** %12, align 8
  store %struct.arc* %172, %struct.arc** %11, align 8
  br label %137

173:                                              ; preds = %108, %123, %168, %137
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isconstraintarc(%struct.arc*) #1

declare dso_local %struct.state* @newstate(%struct.nfa*) #1

declare dso_local i32 @NISERR(...) #1

declare dso_local i32 @clonesuccessorstates(%struct.nfa*, %struct.state*, %struct.state*, %struct.state*, %struct.arc*, i32*, i32*, i32) #1

declare dso_local i32 @freestate(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, %struct.state*, %struct.state*) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
