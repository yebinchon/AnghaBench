; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_makesearch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_makesearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.nfa = type { i64*, %struct.state* }
%struct.state = type { %struct.state*, %struct.arc*, %struct.arc* }
%struct.arc = type { i64, i64, %struct.state*, %struct.arc*, %struct.state*, %struct.arc* }

@PLAIN = common dso_local global i64 0, align 8
@COLORLESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.nfa*)* @makesearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makesearch(%struct.vars* %0, %struct.nfa* %1) #0 {
  %3 = alloca %struct.vars*, align 8
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.arc*, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca %struct.state*, align 8
  store %struct.vars* %0, %struct.vars** %3, align 8
  store %struct.nfa* %1, %struct.nfa** %4, align 8
  %11 = load %struct.nfa*, %struct.nfa** %4, align 8
  %12 = getelementptr inbounds %struct.nfa, %struct.nfa* %11, i32 0, i32 1
  %13 = load %struct.state*, %struct.state** %12, align 8
  store %struct.state* %13, %struct.state** %7, align 8
  %14 = load %struct.state*, %struct.state** %7, align 8
  %15 = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 2
  %16 = load %struct.arc*, %struct.arc** %15, align 8
  store %struct.arc* %16, %struct.arc** %5, align 8
  br label %17

17:                                               ; preds = %49, %2
  %18 = load %struct.arc*, %struct.arc** %5, align 8
  %19 = icmp ne %struct.arc* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load %struct.arc*, %struct.arc** %5, align 8
  %22 = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PLAIN, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.arc*, %struct.arc** %5, align 8
  %29 = getelementptr inbounds %struct.arc, %struct.arc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nfa*, %struct.nfa** %4, align 8
  %32 = getelementptr inbounds %struct.nfa, %struct.nfa* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %20
  %38 = load %struct.arc*, %struct.arc** %5, align 8
  %39 = getelementptr inbounds %struct.arc, %struct.arc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nfa*, %struct.nfa** %4, align 8
  %42 = getelementptr inbounds %struct.nfa, %struct.nfa* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %53

48:                                               ; preds = %37, %20
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.arc*, %struct.arc** %5, align 8
  %51 = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 5
  %52 = load %struct.arc*, %struct.arc** %51, align 8
  store %struct.arc* %52, %struct.arc** %5, align 8
  br label %17

53:                                               ; preds = %47, %17
  %54 = load %struct.arc*, %struct.arc** %5, align 8
  %55 = icmp ne %struct.arc* %54, null
  br i1 %55, label %56, label %86

56:                                               ; preds = %53
  %57 = load %struct.nfa*, %struct.nfa** %4, align 8
  %58 = load %struct.vars*, %struct.vars** %3, align 8
  %59 = getelementptr inbounds %struct.vars, %struct.vars* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @PLAIN, align 8
  %62 = load i32, i32* @COLORLESS, align 4
  %63 = load %struct.state*, %struct.state** %7, align 8
  %64 = load %struct.state*, %struct.state** %7, align 8
  %65 = call i32 @rainbow(%struct.nfa* %57, i32 %60, i64 %61, i32 %62, %struct.state* %63, %struct.state* %64)
  %66 = load %struct.nfa*, %struct.nfa** %4, align 8
  %67 = load i64, i64* @PLAIN, align 8
  %68 = load %struct.nfa*, %struct.nfa** %4, align 8
  %69 = getelementptr inbounds %struct.nfa, %struct.nfa* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.state*, %struct.state** %7, align 8
  %74 = load %struct.state*, %struct.state** %7, align 8
  %75 = call i32 @newarc(%struct.nfa* %66, i64 %67, i64 %72, %struct.state* %73, %struct.state* %74)
  %76 = load %struct.nfa*, %struct.nfa** %4, align 8
  %77 = load i64, i64* @PLAIN, align 8
  %78 = load %struct.nfa*, %struct.nfa** %4, align 8
  %79 = getelementptr inbounds %struct.nfa, %struct.nfa* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.state*, %struct.state** %7, align 8
  %84 = load %struct.state*, %struct.state** %7, align 8
  %85 = call i32 @newarc(%struct.nfa* %76, i64 %77, i64 %82, %struct.state* %83, %struct.state* %84)
  br label %86

86:                                               ; preds = %56, %53
  store %struct.state* null, %struct.state** %10, align 8
  %87 = load %struct.state*, %struct.state** %7, align 8
  %88 = getelementptr inbounds %struct.state, %struct.state* %87, i32 0, i32 2
  %89 = load %struct.arc*, %struct.arc** %88, align 8
  store %struct.arc* %89, %struct.arc** %5, align 8
  br label %90

90:                                               ; preds = %136, %86
  %91 = load %struct.arc*, %struct.arc** %5, align 8
  %92 = icmp ne %struct.arc* %91, null
  br i1 %92, label %93, label %140

93:                                               ; preds = %90
  %94 = load %struct.arc*, %struct.arc** %5, align 8
  %95 = getelementptr inbounds %struct.arc, %struct.arc* %94, i32 0, i32 4
  %96 = load %struct.state*, %struct.state** %95, align 8
  store %struct.state* %96, %struct.state** %8, align 8
  %97 = load %struct.state*, %struct.state** %8, align 8
  %98 = getelementptr inbounds %struct.state, %struct.state* %97, i32 0, i32 1
  %99 = load %struct.arc*, %struct.arc** %98, align 8
  store %struct.arc* %99, %struct.arc** %6, align 8
  br label %100

100:                                              ; preds = %111, %93
  %101 = load %struct.arc*, %struct.arc** %6, align 8
  %102 = icmp ne %struct.arc* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load %struct.arc*, %struct.arc** %6, align 8
  %105 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 0, i32 2
  %106 = load %struct.state*, %struct.state** %105, align 8
  %107 = load %struct.state*, %struct.state** %7, align 8
  %108 = icmp ne %struct.state* %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %115

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.arc*, %struct.arc** %6, align 8
  %113 = getelementptr inbounds %struct.arc, %struct.arc* %112, i32 0, i32 3
  %114 = load %struct.arc*, %struct.arc** %113, align 8
  store %struct.arc* %114, %struct.arc** %6, align 8
  br label %100

115:                                              ; preds = %109, %100
  %116 = load %struct.arc*, %struct.arc** %6, align 8
  %117 = icmp ne %struct.arc* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load %struct.state*, %struct.state** %8, align 8
  %120 = getelementptr inbounds %struct.state, %struct.state* %119, i32 0, i32 0
  %121 = load %struct.state*, %struct.state** %120, align 8
  %122 = icmp eq %struct.state* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load %struct.state*, %struct.state** %10, align 8
  %125 = icmp ne %struct.state* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load %struct.state*, %struct.state** %10, align 8
  br label %130

128:                                              ; preds = %123
  %129 = load %struct.state*, %struct.state** %8, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi %struct.state* [ %127, %126 ], [ %129, %128 ]
  %132 = load %struct.state*, %struct.state** %8, align 8
  %133 = getelementptr inbounds %struct.state, %struct.state* %132, i32 0, i32 0
  store %struct.state* %131, %struct.state** %133, align 8
  %134 = load %struct.state*, %struct.state** %8, align 8
  store %struct.state* %134, %struct.state** %10, align 8
  br label %135

135:                                              ; preds = %130, %118, %115
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.arc*, %struct.arc** %5, align 8
  %138 = getelementptr inbounds %struct.arc, %struct.arc* %137, i32 0, i32 5
  %139 = load %struct.arc*, %struct.arc** %138, align 8
  store %struct.arc* %139, %struct.arc** %5, align 8
  br label %90

140:                                              ; preds = %90
  %141 = load %struct.state*, %struct.state** %10, align 8
  store %struct.state* %141, %struct.state** %8, align 8
  br label %142

142:                                              ; preds = %198, %140
  %143 = load %struct.state*, %struct.state** %8, align 8
  %144 = icmp ne %struct.state* %143, null
  br i1 %144, label %145, label %200

145:                                              ; preds = %142
  %146 = load %struct.nfa*, %struct.nfa** %4, align 8
  %147 = call %struct.state* @newstate(%struct.nfa* %146)
  store %struct.state* %147, %struct.state** %9, align 8
  %148 = call i32 (...) @NOERR()
  %149 = load %struct.nfa*, %struct.nfa** %4, align 8
  %150 = load %struct.state*, %struct.state** %8, align 8
  %151 = load %struct.state*, %struct.state** %9, align 8
  %152 = call i32 @copyouts(%struct.nfa* %149, %struct.state* %150, %struct.state* %151)
  %153 = call i32 (...) @NOERR()
  %154 = load %struct.state*, %struct.state** %8, align 8
  %155 = getelementptr inbounds %struct.state, %struct.state* %154, i32 0, i32 1
  %156 = load %struct.arc*, %struct.arc** %155, align 8
  store %struct.arc* %156, %struct.arc** %5, align 8
  br label %157

157:                                              ; preds = %181, %145
  %158 = load %struct.arc*, %struct.arc** %5, align 8
  %159 = icmp ne %struct.arc* %158, null
  br i1 %159, label %160, label %183

160:                                              ; preds = %157
  %161 = load %struct.arc*, %struct.arc** %5, align 8
  %162 = getelementptr inbounds %struct.arc, %struct.arc* %161, i32 0, i32 3
  %163 = load %struct.arc*, %struct.arc** %162, align 8
  store %struct.arc* %163, %struct.arc** %6, align 8
  %164 = load %struct.arc*, %struct.arc** %5, align 8
  %165 = getelementptr inbounds %struct.arc, %struct.arc* %164, i32 0, i32 2
  %166 = load %struct.state*, %struct.state** %165, align 8
  %167 = load %struct.state*, %struct.state** %7, align 8
  %168 = icmp ne %struct.state* %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %160
  %170 = load %struct.nfa*, %struct.nfa** %4, align 8
  %171 = load %struct.arc*, %struct.arc** %5, align 8
  %172 = load %struct.arc*, %struct.arc** %5, align 8
  %173 = getelementptr inbounds %struct.arc, %struct.arc* %172, i32 0, i32 2
  %174 = load %struct.state*, %struct.state** %173, align 8
  %175 = load %struct.state*, %struct.state** %9, align 8
  %176 = call i32 @cparc(%struct.nfa* %170, %struct.arc* %171, %struct.state* %174, %struct.state* %175)
  %177 = load %struct.nfa*, %struct.nfa** %4, align 8
  %178 = load %struct.arc*, %struct.arc** %5, align 8
  %179 = call i32 @freearc(%struct.nfa* %177, %struct.arc* %178)
  br label %180

180:                                              ; preds = %169, %160
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.arc*, %struct.arc** %6, align 8
  store %struct.arc* %182, %struct.arc** %5, align 8
  br label %157

183:                                              ; preds = %157
  %184 = load %struct.state*, %struct.state** %8, align 8
  %185 = getelementptr inbounds %struct.state, %struct.state* %184, i32 0, i32 0
  %186 = load %struct.state*, %struct.state** %185, align 8
  %187 = load %struct.state*, %struct.state** %8, align 8
  %188 = icmp ne %struct.state* %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.state*, %struct.state** %8, align 8
  %191 = getelementptr inbounds %struct.state, %struct.state* %190, i32 0, i32 0
  %192 = load %struct.state*, %struct.state** %191, align 8
  br label %194

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193, %189
  %195 = phi %struct.state* [ %192, %189 ], [ null, %193 ]
  store %struct.state* %195, %struct.state** %9, align 8
  %196 = load %struct.state*, %struct.state** %8, align 8
  %197 = getelementptr inbounds %struct.state, %struct.state* %196, i32 0, i32 0
  store %struct.state* null, %struct.state** %197, align 8
  br label %198

198:                                              ; preds = %194
  %199 = load %struct.state*, %struct.state** %9, align 8
  store %struct.state* %199, %struct.state** %8, align 8
  br label %142

200:                                              ; preds = %142
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rainbow(%struct.nfa*, i32, i64, i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @newarc(%struct.nfa*, i64, i64, %struct.state*, %struct.state*) #1

declare dso_local %struct.state* @newstate(%struct.nfa*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @copyouts(%struct.nfa*, %struct.state*, %struct.state*) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, %struct.state*, %struct.state*) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
