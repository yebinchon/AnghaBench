; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_pull.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }
%struct.arc = type { %struct.state*, %struct.state*, %struct.arc* }
%struct.state = type { i64, i32, %struct.state*, %struct.arc*, %struct.arc*, i64 }

@NOTREACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfa*, %struct.arc*, %struct.state**)* @pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pull(%struct.nfa* %0, %struct.arc* %1, %struct.state** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfa*, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca %struct.state**, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca %struct.arc*, align 8
  %11 = alloca %struct.arc*, align 8
  %12 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %5, align 8
  store %struct.arc* %1, %struct.arc** %6, align 8
  store %struct.state** %2, %struct.state*** %7, align 8
  %13 = load %struct.arc*, %struct.arc** %6, align 8
  %14 = getelementptr inbounds %struct.arc, %struct.arc* %13, i32 0, i32 0
  %15 = load %struct.state*, %struct.state** %14, align 8
  store %struct.state* %15, %struct.state** %8, align 8
  %16 = load %struct.arc*, %struct.arc** %6, align 8
  %17 = getelementptr inbounds %struct.arc, %struct.arc* %16, i32 0, i32 1
  %18 = load %struct.state*, %struct.state** %17, align 8
  store %struct.state* %18, %struct.state** %9, align 8
  %19 = load %struct.state*, %struct.state** %8, align 8
  %20 = load %struct.state*, %struct.state** %9, align 8
  %21 = icmp ne %struct.state* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.state*, %struct.state** %8, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %190

29:                                               ; preds = %3
  %30 = load %struct.state*, %struct.state** %8, align 8
  %31 = getelementptr inbounds %struct.state, %struct.state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.nfa*, %struct.nfa** %5, align 8
  %36 = load %struct.arc*, %struct.arc** %6, align 8
  %37 = call i32 @freearc(%struct.nfa* %35, %struct.arc* %36)
  store i32 1, i32* %4, align 4
  br label %190

38:                                               ; preds = %29
  %39 = load %struct.state*, %struct.state** %8, align 8
  %40 = getelementptr inbounds %struct.state, %struct.state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load %struct.nfa*, %struct.nfa** %5, align 8
  %45 = call %struct.state* @newstate(%struct.nfa* %44)
  store %struct.state* %45, %struct.state** %12, align 8
  %46 = call i64 (...) @NISERR()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %190

49:                                               ; preds = %43
  %50 = load %struct.nfa*, %struct.nfa** %5, align 8
  %51 = load %struct.state*, %struct.state** %8, align 8
  %52 = load %struct.state*, %struct.state** %12, align 8
  %53 = call i32 @copyins(%struct.nfa* %50, %struct.state* %51, %struct.state* %52)
  %54 = load %struct.nfa*, %struct.nfa** %5, align 8
  %55 = load %struct.arc*, %struct.arc** %6, align 8
  %56 = load %struct.state*, %struct.state** %12, align 8
  %57 = load %struct.state*, %struct.state** %9, align 8
  %58 = call i32 @cparc(%struct.nfa* %54, %struct.arc* %55, %struct.state* %56, %struct.state* %57)
  %59 = load %struct.nfa*, %struct.nfa** %5, align 8
  %60 = load %struct.arc*, %struct.arc** %6, align 8
  %61 = call i32 @freearc(%struct.nfa* %59, %struct.arc* %60)
  %62 = call i64 (...) @NISERR()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %190

65:                                               ; preds = %49
  %66 = load %struct.state*, %struct.state** %12, align 8
  store %struct.state* %66, %struct.state** %8, align 8
  %67 = load %struct.state*, %struct.state** %8, align 8
  %68 = getelementptr inbounds %struct.state, %struct.state* %67, i32 0, i32 3
  %69 = load %struct.arc*, %struct.arc** %68, align 8
  store %struct.arc* %69, %struct.arc** %6, align 8
  br label %70

70:                                               ; preds = %65, %38
  %71 = load %struct.state*, %struct.state** %8, align 8
  %72 = getelementptr inbounds %struct.state, %struct.state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.state*, %struct.state** %8, align 8
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 4
  %79 = load %struct.arc*, %struct.arc** %78, align 8
  store %struct.arc* %79, %struct.arc** %10, align 8
  br label %80

80:                                               ; preds = %180, %70
  %81 = load %struct.arc*, %struct.arc** %10, align 8
  %82 = icmp ne %struct.arc* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call i64 (...) @NISERR()
  %85 = icmp ne i64 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i1 [ false, %80 ], [ %86, %83 ]
  br i1 %88, label %89, label %182

89:                                               ; preds = %87
  %90 = load %struct.arc*, %struct.arc** %10, align 8
  %91 = getelementptr inbounds %struct.arc, %struct.arc* %90, i32 0, i32 2
  %92 = load %struct.arc*, %struct.arc** %91, align 8
  store %struct.arc* %92, %struct.arc** %11, align 8
  %93 = load %struct.arc*, %struct.arc** %6, align 8
  %94 = load %struct.arc*, %struct.arc** %10, align 8
  %95 = call i32 @combine(%struct.arc* %93, %struct.arc* %94)
  switch i32 %95, label %176 [
    i32 129, label %96
    i32 128, label %100
    i32 130, label %101
  ]

96:                                               ; preds = %89
  %97 = load %struct.nfa*, %struct.nfa** %5, align 8
  %98 = load %struct.arc*, %struct.arc** %10, align 8
  %99 = call i32 @freearc(%struct.nfa* %97, %struct.arc* %98)
  br label %179

100:                                              ; preds = %89
  br label %179

101:                                              ; preds = %89
  %102 = load %struct.state**, %struct.state*** %7, align 8
  %103 = load %struct.state*, %struct.state** %102, align 8
  store %struct.state* %103, %struct.state** %12, align 8
  br label %104

104:                                              ; preds = %140, %101
  %105 = load %struct.state*, %struct.state** %12, align 8
  %106 = icmp ne %struct.state* %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %104
  %108 = load %struct.state*, %struct.state** %12, align 8
  %109 = getelementptr inbounds %struct.state, %struct.state* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.state*, %struct.state** %12, align 8
  %114 = getelementptr inbounds %struct.state, %struct.state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 0
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.state*, %struct.state** %12, align 8
  %122 = getelementptr inbounds %struct.state, %struct.state* %121, i32 0, i32 4
  %123 = load %struct.arc*, %struct.arc** %122, align 8
  %124 = getelementptr inbounds %struct.arc, %struct.arc* %123, i32 0, i32 0
  %125 = load %struct.state*, %struct.state** %124, align 8
  %126 = load %struct.arc*, %struct.arc** %10, align 8
  %127 = getelementptr inbounds %struct.arc, %struct.arc* %126, i32 0, i32 0
  %128 = load %struct.state*, %struct.state** %127, align 8
  %129 = icmp eq %struct.state* %125, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %117
  %131 = load %struct.state*, %struct.state** %12, align 8
  %132 = getelementptr inbounds %struct.state, %struct.state* %131, i32 0, i32 3
  %133 = load %struct.arc*, %struct.arc** %132, align 8
  %134 = getelementptr inbounds %struct.arc, %struct.arc* %133, i32 0, i32 1
  %135 = load %struct.state*, %struct.state** %134, align 8
  %136 = load %struct.state*, %struct.state** %9, align 8
  %137 = icmp eq %struct.state* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %144

139:                                              ; preds = %130, %117
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.state*, %struct.state** %12, align 8
  %142 = getelementptr inbounds %struct.state, %struct.state* %141, i32 0, i32 2
  %143 = load %struct.state*, %struct.state** %142, align 8
  store %struct.state* %143, %struct.state** %12, align 8
  br label %104

144:                                              ; preds = %138, %104
  %145 = load %struct.state*, %struct.state** %12, align 8
  %146 = icmp eq %struct.state* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load %struct.nfa*, %struct.nfa** %5, align 8
  %149 = call %struct.state* @newstate(%struct.nfa* %148)
  store %struct.state* %149, %struct.state** %12, align 8
  %150 = call i64 (...) @NISERR()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %190

153:                                              ; preds = %147
  %154 = load %struct.state**, %struct.state*** %7, align 8
  %155 = load %struct.state*, %struct.state** %154, align 8
  %156 = load %struct.state*, %struct.state** %12, align 8
  %157 = getelementptr inbounds %struct.state, %struct.state* %156, i32 0, i32 2
  store %struct.state* %155, %struct.state** %157, align 8
  %158 = load %struct.state*, %struct.state** %12, align 8
  %159 = load %struct.state**, %struct.state*** %7, align 8
  store %struct.state* %158, %struct.state** %159, align 8
  br label %160

160:                                              ; preds = %153, %144
  %161 = load %struct.nfa*, %struct.nfa** %5, align 8
  %162 = load %struct.arc*, %struct.arc** %6, align 8
  %163 = load %struct.arc*, %struct.arc** %10, align 8
  %164 = getelementptr inbounds %struct.arc, %struct.arc* %163, i32 0, i32 0
  %165 = load %struct.state*, %struct.state** %164, align 8
  %166 = load %struct.state*, %struct.state** %12, align 8
  %167 = call i32 @cparc(%struct.nfa* %161, %struct.arc* %162, %struct.state* %165, %struct.state* %166)
  %168 = load %struct.nfa*, %struct.nfa** %5, align 8
  %169 = load %struct.arc*, %struct.arc** %10, align 8
  %170 = load %struct.state*, %struct.state** %12, align 8
  %171 = load %struct.state*, %struct.state** %9, align 8
  %172 = call i32 @cparc(%struct.nfa* %168, %struct.arc* %169, %struct.state* %170, %struct.state* %171)
  %173 = load %struct.nfa*, %struct.nfa** %5, align 8
  %174 = load %struct.arc*, %struct.arc** %10, align 8
  %175 = call i32 @freearc(%struct.nfa* %173, %struct.arc* %174)
  br label %179

176:                                              ; preds = %89
  %177 = load i32, i32* @NOTREACHED, align 4
  %178 = call i32 @assert(i32 %177)
  br label %179

179:                                              ; preds = %176, %160, %100, %96
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.arc*, %struct.arc** %11, align 8
  store %struct.arc* %181, %struct.arc** %10, align 8
  br label %80

182:                                              ; preds = %87
  %183 = load %struct.nfa*, %struct.nfa** %5, align 8
  %184 = load %struct.state*, %struct.state** %8, align 8
  %185 = load %struct.state*, %struct.state** %9, align 8
  %186 = call i32 @moveins(%struct.nfa* %183, %struct.state* %184, %struct.state* %185)
  %187 = load %struct.nfa*, %struct.nfa** %5, align 8
  %188 = load %struct.arc*, %struct.arc** %6, align 8
  %189 = call i32 @freearc(%struct.nfa* %187, %struct.arc* %188)
  store i32 1, i32* %4, align 4
  br label %190

190:                                              ; preds = %182, %152, %64, %48, %34, %28
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

declare dso_local %struct.state* @newstate(%struct.nfa*) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @copyins(%struct.nfa*, %struct.state*, %struct.state*) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, %struct.state*, %struct.state*) #1

declare dso_local i32 @combine(%struct.arc*, %struct.arc*) #1

declare dso_local i32 @moveins(%struct.nfa*, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
