; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_pullback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_pullback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32*, %struct.TYPE_2__*, %struct.state* }
%struct.TYPE_2__ = type { %struct.arc* }
%struct.arc = type { i8, i32, i32, i32, %struct.arc* }
%struct.state = type { i64, i64, i32, %struct.state*, %struct.arc*, %struct.state* }

@BEHIND = common dso_local global i8 0, align 1
@PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, i32*)* @pullback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullback(%struct.nfa* %0, i32* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.arc*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %12

12:                                               ; preds = %119, %2
  store i32 0, i32* %10, align 4
  %13 = load %struct.nfa*, %struct.nfa** %3, align 8
  %14 = getelementptr inbounds %struct.nfa, %struct.nfa* %13, i32 0, i32 2
  %15 = load %struct.state*, %struct.state** %14, align 8
  store %struct.state* %15, %struct.state** %5, align 8
  br label %16

16:                                               ; preds = %99, %12
  %17 = load %struct.state*, %struct.state** %5, align 8
  %18 = icmp ne %struct.state* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i64 (...) @NISERR()
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %101

25:                                               ; preds = %23
  %26 = load %struct.state*, %struct.state** %5, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 5
  %28 = load %struct.state*, %struct.state** %27, align 8
  store %struct.state* %28, %struct.state** %6, align 8
  store %struct.state* null, %struct.state** %9, align 8
  %29 = load %struct.state*, %struct.state** %5, align 8
  %30 = getelementptr inbounds %struct.state, %struct.state* %29, i32 0, i32 4
  %31 = load %struct.arc*, %struct.arc** %30, align 8
  store %struct.arc* %31, %struct.arc** %7, align 8
  br label %32

32:                                               ; preds = %66, %25
  %33 = load %struct.arc*, %struct.arc** %7, align 8
  %34 = icmp ne %struct.arc* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = call i64 (...) @NISERR()
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %68

41:                                               ; preds = %39
  %42 = load %struct.arc*, %struct.arc** %7, align 8
  %43 = getelementptr inbounds %struct.arc, %struct.arc* %42, i32 0, i32 4
  %44 = load %struct.arc*, %struct.arc** %43, align 8
  store %struct.arc* %44, %struct.arc** %8, align 8
  %45 = load %struct.arc*, %struct.arc** %7, align 8
  %46 = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 8
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 94
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = load %struct.arc*, %struct.arc** %7, align 8
  %52 = getelementptr inbounds %struct.arc, %struct.arc* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 8
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @BEHIND, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50, %41
  %59 = load %struct.nfa*, %struct.nfa** %3, align 8
  %60 = load %struct.arc*, %struct.arc** %7, align 8
  %61 = call i64 @pull(%struct.nfa* %59, %struct.arc* %60, %struct.state** %9)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %58
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %67, %struct.arc** %7, align 8
  br label %32

68:                                               ; preds = %39
  br label %69

69:                                               ; preds = %72, %68
  %70 = load %struct.state*, %struct.state** %9, align 8
  %71 = icmp ne %struct.state* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.state*, %struct.state** %9, align 8
  %74 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 3
  %75 = load %struct.state*, %struct.state** %74, align 8
  store %struct.state* %75, %struct.state** %11, align 8
  %76 = load %struct.state*, %struct.state** %9, align 8
  %77 = getelementptr inbounds %struct.state, %struct.state* %76, i32 0, i32 3
  store %struct.state* null, %struct.state** %77, align 8
  %78 = load %struct.state*, %struct.state** %11, align 8
  store %struct.state* %78, %struct.state** %9, align 8
  br label %69

79:                                               ; preds = %69
  %80 = load %struct.state*, %struct.state** %5, align 8
  %81 = getelementptr inbounds %struct.state, %struct.state* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.state*, %struct.state** %5, align 8
  %86 = getelementptr inbounds %struct.state, %struct.state* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84, %79
  %90 = load %struct.state*, %struct.state** %5, align 8
  %91 = getelementptr inbounds %struct.state, %struct.state* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load %struct.nfa*, %struct.nfa** %3, align 8
  %96 = load %struct.state*, %struct.state** %5, align 8
  %97 = call i32 @dropstate(%struct.nfa* %95, %struct.state* %96)
  br label %98

98:                                               ; preds = %94, %89, %84
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.state*, %struct.state** %6, align 8
  store %struct.state* %100, %struct.state** %5, align 8
  br label %16

101:                                              ; preds = %23
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32*, i32** %4, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.nfa*, %struct.nfa** %3, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @dumpnfa(%struct.nfa* %108, i32* %109)
  br label %111

111:                                              ; preds = %107, %104, %101
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = call i64 (...) @NISERR()
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %115, %112
  %120 = phi i1 [ false, %112 ], [ %118, %115 ]
  br i1 %120, label %12, label %121

121:                                              ; preds = %119
  %122 = call i64 (...) @NISERR()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %181

125:                                              ; preds = %121
  %126 = load %struct.nfa*, %struct.nfa** %3, align 8
  %127 = getelementptr inbounds %struct.nfa, %struct.nfa* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load %struct.arc*, %struct.arc** %129, align 8
  store %struct.arc* %130, %struct.arc** %7, align 8
  br label %131

131:                                              ; preds = %179, %125
  %132 = load %struct.arc*, %struct.arc** %7, align 8
  %133 = icmp ne %struct.arc* %132, null
  br i1 %133, label %134, label %181

134:                                              ; preds = %131
  %135 = load %struct.arc*, %struct.arc** %7, align 8
  %136 = getelementptr inbounds %struct.arc, %struct.arc* %135, i32 0, i32 4
  %137 = load %struct.arc*, %struct.arc** %136, align 8
  store %struct.arc* %137, %struct.arc** %8, align 8
  %138 = load %struct.arc*, %struct.arc** %7, align 8
  %139 = getelementptr inbounds %struct.arc, %struct.arc* %138, i32 0, i32 0
  %140 = load i8, i8* %139, align 8
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 94
  br i1 %142, label %143, label %178

143:                                              ; preds = %134
  %144 = load %struct.arc*, %struct.arc** %7, align 8
  %145 = getelementptr inbounds %struct.arc, %struct.arc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.arc*, %struct.arc** %7, align 8
  %150 = getelementptr inbounds %struct.arc, %struct.arc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 1
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i1 [ true, %143 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.nfa*, %struct.nfa** %3, align 8
  %158 = load i32, i32* @PLAIN, align 4
  %159 = load %struct.nfa*, %struct.nfa** %3, align 8
  %160 = getelementptr inbounds %struct.nfa, %struct.nfa* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.arc*, %struct.arc** %7, align 8
  %163 = getelementptr inbounds %struct.arc, %struct.arc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.arc*, %struct.arc** %7, align 8
  %169 = getelementptr inbounds %struct.arc, %struct.arc* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.arc*, %struct.arc** %7, align 8
  %172 = getelementptr inbounds %struct.arc, %struct.arc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @newarc(%struct.nfa* %157, i32 %158, i32 %167, i32 %170, i32 %173)
  %175 = load %struct.nfa*, %struct.nfa** %3, align 8
  %176 = load %struct.arc*, %struct.arc** %7, align 8
  %177 = call i32 @freearc(%struct.nfa* %175, %struct.arc* %176)
  br label %178

178:                                              ; preds = %153, %134
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %180, %struct.arc** %7, align 8
  br label %131

181:                                              ; preds = %124, %131
  ret void
}

declare dso_local i64 @NISERR(...) #1

declare dso_local i64 @pull(%struct.nfa*, %struct.arc*, %struct.state**) #1

declare dso_local i32 @dropstate(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @dumpnfa(%struct.nfa*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @newarc(%struct.nfa*, i32, i32, i32, i32) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
