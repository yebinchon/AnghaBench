; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_fixconstraintloops.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_fixconstraintloops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.state* }
%struct.state = type { i64, i64, i32, i32*, %struct.state*, %struct.arc* }
%struct.arc = type { %struct.state*, %struct.arc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, i32*)* @fixconstraintloops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixconstraintloops(%struct.nfa* %0, i32* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.arc*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca i32, align 4
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nfa*, %struct.nfa** %3, align 8
  %11 = getelementptr inbounds %struct.nfa, %struct.nfa* %10, i32 0, i32 0
  %12 = load %struct.state*, %struct.state** %11, align 8
  store %struct.state* %12, %struct.state** %5, align 8
  br label %13

13:                                               ; preds = %81, %2
  %14 = load %struct.state*, %struct.state** %5, align 8
  %15 = icmp ne %struct.state* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = call i64 (...) @NISERR()
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %83

22:                                               ; preds = %20
  %23 = load %struct.state*, %struct.state** %5, align 8
  %24 = getelementptr inbounds %struct.state, %struct.state* %23, i32 0, i32 4
  %25 = load %struct.state*, %struct.state** %24, align 8
  store %struct.state* %25, %struct.state** %6, align 8
  %26 = load %struct.state*, %struct.state** %5, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.state*, %struct.state** %5, align 8
  %33 = getelementptr inbounds %struct.state, %struct.state* %32, i32 0, i32 5
  %34 = load %struct.arc*, %struct.arc** %33, align 8
  store %struct.arc* %34, %struct.arc** %7, align 8
  br label %35

35:                                               ; preds = %64, %22
  %36 = load %struct.arc*, %struct.arc** %7, align 8
  %37 = icmp ne %struct.arc* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i64 (...) @NISERR()
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %44, label %66

44:                                               ; preds = %42
  %45 = load %struct.arc*, %struct.arc** %7, align 8
  %46 = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 0, i32 1
  %47 = load %struct.arc*, %struct.arc** %46, align 8
  store %struct.arc* %47, %struct.arc** %8, align 8
  %48 = load %struct.arc*, %struct.arc** %7, align 8
  %49 = call i64 @isconstraintarc(%struct.arc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.arc*, %struct.arc** %7, align 8
  %53 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 0
  %54 = load %struct.state*, %struct.state** %53, align 8
  %55 = load %struct.state*, %struct.state** %5, align 8
  %56 = icmp eq %struct.state* %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.nfa*, %struct.nfa** %3, align 8
  %59 = load %struct.arc*, %struct.arc** %7, align 8
  %60 = call i32 @freearc(%struct.nfa* %58, %struct.arc* %59)
  br label %62

61:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %65, %struct.arc** %7, align 8
  br label %35

66:                                               ; preds = %42
  %67 = load %struct.state*, %struct.state** %5, align 8
  %68 = getelementptr inbounds %struct.state, %struct.state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.state*, %struct.state** %5, align 8
  %73 = getelementptr inbounds %struct.state, %struct.state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load %struct.nfa*, %struct.nfa** %3, align 8
  %78 = load %struct.state*, %struct.state** %5, align 8
  %79 = call i32 @dropstate(%struct.nfa* %77, %struct.state* %78)
  br label %80

80:                                               ; preds = %76, %71, %66
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.state*, %struct.state** %6, align 8
  store %struct.state* %82, %struct.state** %5, align 8
  br label %13

83:                                               ; preds = %20
  %84 = call i64 (...) @NISERR()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86, %83
  br label %160

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %109, %90
  %92 = load %struct.nfa*, %struct.nfa** %3, align 8
  %93 = getelementptr inbounds %struct.nfa, %struct.nfa* %92, i32 0, i32 0
  %94 = load %struct.state*, %struct.state** %93, align 8
  store %struct.state* %94, %struct.state** %5, align 8
  br label %95

95:                                               ; preds = %111, %91
  %96 = load %struct.state*, %struct.state** %5, align 8
  %97 = icmp ne %struct.state* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = call i64 (...) @NISERR()
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i1 [ false, %95 ], [ %101, %98 ]
  br i1 %103, label %104, label %115

104:                                              ; preds = %102
  %105 = load %struct.nfa*, %struct.nfa** %3, align 8
  %106 = load %struct.state*, %struct.state** %5, align 8
  %107 = call i64 @findconstraintloop(%struct.nfa* %105, %struct.state* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %91

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.state*, %struct.state** %5, align 8
  %113 = getelementptr inbounds %struct.state, %struct.state* %112, i32 0, i32 4
  %114 = load %struct.state*, %struct.state** %113, align 8
  store %struct.state* %114, %struct.state** %5, align 8
  br label %95

115:                                              ; preds = %102
  %116 = call i64 (...) @NISERR()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %160

119:                                              ; preds = %115
  %120 = load %struct.nfa*, %struct.nfa** %3, align 8
  %121 = getelementptr inbounds %struct.nfa, %struct.nfa* %120, i32 0, i32 0
  %122 = load %struct.state*, %struct.state** %121, align 8
  store %struct.state* %122, %struct.state** %5, align 8
  br label %123

123:                                              ; preds = %151, %119
  %124 = load %struct.state*, %struct.state** %5, align 8
  %125 = icmp ne %struct.state* %124, null
  br i1 %125, label %126, label %153

126:                                              ; preds = %123
  %127 = load %struct.state*, %struct.state** %5, align 8
  %128 = getelementptr inbounds %struct.state, %struct.state* %127, i32 0, i32 4
  %129 = load %struct.state*, %struct.state** %128, align 8
  store %struct.state* %129, %struct.state** %6, align 8
  %130 = load %struct.state*, %struct.state** %5, align 8
  %131 = getelementptr inbounds %struct.state, %struct.state* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  %132 = load %struct.state*, %struct.state** %5, align 8
  %133 = getelementptr inbounds %struct.state, %struct.state* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %126
  %137 = load %struct.state*, %struct.state** %5, align 8
  %138 = getelementptr inbounds %struct.state, %struct.state* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136, %126
  %142 = load %struct.state*, %struct.state** %5, align 8
  %143 = getelementptr inbounds %struct.state, %struct.state* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = load %struct.nfa*, %struct.nfa** %3, align 8
  %148 = load %struct.state*, %struct.state** %5, align 8
  %149 = call i32 @dropstate(%struct.nfa* %147, %struct.state* %148)
  br label %150

150:                                              ; preds = %146, %141, %136
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.state*, %struct.state** %6, align 8
  store %struct.state* %152, %struct.state** %5, align 8
  br label %123

153:                                              ; preds = %123
  %154 = load i32*, i32** %4, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load %struct.nfa*, %struct.nfa** %3, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @dumpnfa(%struct.nfa* %157, i32* %158)
  br label %160

160:                                              ; preds = %89, %118, %156, %153
  ret void
}

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isconstraintarc(%struct.arc*) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

declare dso_local i32 @dropstate(%struct.nfa*, %struct.state*) #1

declare dso_local i64 @findconstraintloop(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @dumpnfa(%struct.nfa*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
