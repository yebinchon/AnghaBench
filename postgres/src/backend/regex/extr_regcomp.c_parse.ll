; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_parse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subre = type { i32, i8, %struct.subre*, %struct.subre* }
%struct.vars = type { i32 }
%struct.state = type { i32 }

@EOS = common dso_local global i32 0, align 4
@LONGER = common dso_local global i32 0, align 4
@REG_EPAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.subre* (%struct.vars*, i32, i32, %struct.state*, %struct.state*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.subre* @parse(%struct.vars* %0, i32 %1, i32 %2, %struct.state* %3, %struct.state* %4) #0 {
  %6 = alloca %struct.vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.state*, align 8
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.state*, align 8
  %12 = alloca %struct.state*, align 8
  %13 = alloca %struct.subre*, align 8
  %14 = alloca %struct.subre*, align 8
  %15 = alloca %struct.subre*, align 8
  %16 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.state* %3, %struct.state** %9, align 8
  store %struct.state* %4, %struct.state** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 41
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EOS, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i1 [ true, %5 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.vars*, %struct.vars** %6, align 8
  %28 = load i32, i32* @LONGER, align 4
  %29 = load %struct.state*, %struct.state** %9, align 8
  %30 = load %struct.state*, %struct.state** %10, align 8
  %31 = call i8* @subre(%struct.vars* %27, i8 signext 124, i32 %28, %struct.state* %29, %struct.state* %30)
  %32 = bitcast i8* %31 to %struct.subre*
  store %struct.subre* %32, %struct.subre** %13, align 8
  %33 = call i32 (...) @NOERRN()
  %34 = load %struct.subre*, %struct.subre** %13, align 8
  store %struct.subre* %34, %struct.subre** %14, align 8
  store i32 1, i32* %16, align 4
  br label %35

35:                                               ; preds = %120, %23
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = load %struct.vars*, %struct.vars** %6, align 8
  %40 = load i32, i32* @LONGER, align 4
  %41 = load %struct.state*, %struct.state** %9, align 8
  %42 = load %struct.state*, %struct.state** %10, align 8
  %43 = call i8* @subre(%struct.vars* %39, i8 signext 124, i32 %40, %struct.state* %41, %struct.state* %42)
  %44 = bitcast i8* %43 to %struct.subre*
  %45 = load %struct.subre*, %struct.subre** %14, align 8
  %46 = getelementptr inbounds %struct.subre, %struct.subre* %45, i32 0, i32 2
  store %struct.subre* %44, %struct.subre** %46, align 8
  %47 = call i32 (...) @NOERRN()
  %48 = load %struct.subre*, %struct.subre** %14, align 8
  %49 = getelementptr inbounds %struct.subre, %struct.subre* %48, i32 0, i32 2
  %50 = load %struct.subre*, %struct.subre** %49, align 8
  store %struct.subre* %50, %struct.subre** %14, align 8
  br label %51

51:                                               ; preds = %38, %35
  store i32 0, i32* %16, align 4
  %52 = load %struct.vars*, %struct.vars** %6, align 8
  %53 = getelementptr inbounds %struct.vars, %struct.vars* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.state* @newstate(i32 %54)
  store %struct.state* %55, %struct.state** %11, align 8
  %56 = load %struct.vars*, %struct.vars** %6, align 8
  %57 = getelementptr inbounds %struct.vars, %struct.vars* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.state* @newstate(i32 %58)
  store %struct.state* %59, %struct.state** %12, align 8
  %60 = call i32 (...) @NOERRN()
  %61 = load %struct.state*, %struct.state** %9, align 8
  %62 = load %struct.state*, %struct.state** %11, align 8
  %63 = call i32 @EMPTYARC(%struct.state* %61, %struct.state* %62)
  %64 = load %struct.state*, %struct.state** %12, align 8
  %65 = load %struct.state*, %struct.state** %10, align 8
  %66 = call i32 @EMPTYARC(%struct.state* %64, %struct.state* %65)
  %67 = call i32 (...) @NOERRN()
  %68 = load %struct.vars*, %struct.vars** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.state*, %struct.state** %11, align 8
  %72 = load %struct.state*, %struct.state** %12, align 8
  %73 = call %struct.subre* @parsebranch(%struct.vars* %68, i32 %69, i32 %70, %struct.state* %71, %struct.state* %72, i32 0)
  %74 = load %struct.subre*, %struct.subre** %14, align 8
  %75 = getelementptr inbounds %struct.subre, %struct.subre* %74, i32 0, i32 3
  store %struct.subre* %73, %struct.subre** %75, align 8
  %76 = call i32 (...) @NOERRN()
  %77 = load %struct.subre*, %struct.subre** %14, align 8
  %78 = getelementptr inbounds %struct.subre, %struct.subre* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.subre*, %struct.subre** %14, align 8
  %81 = getelementptr inbounds %struct.subre, %struct.subre* %80, i32 0, i32 3
  %82 = load %struct.subre*, %struct.subre** %81, align 8
  %83 = getelementptr inbounds %struct.subre, %struct.subre* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %79, %84
  %86 = call i32 @UP(i32 %85)
  %87 = load %struct.subre*, %struct.subre** %14, align 8
  %88 = getelementptr inbounds %struct.subre, %struct.subre* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.subre*, %struct.subre** %14, align 8
  %92 = getelementptr inbounds %struct.subre, %struct.subre* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.subre*, %struct.subre** %13, align 8
  %95 = getelementptr inbounds %struct.subre, %struct.subre* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = xor i32 %96, -1
  %98 = and i32 %93, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %51
  %101 = load %struct.subre*, %struct.subre** %13, align 8
  store %struct.subre* %101, %struct.subre** %15, align 8
  br label %102

102:                                              ; preds = %114, %100
  %103 = load %struct.subre*, %struct.subre** %15, align 8
  %104 = load %struct.subre*, %struct.subre** %14, align 8
  %105 = icmp ne %struct.subre* %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.subre*, %struct.subre** %14, align 8
  %108 = getelementptr inbounds %struct.subre, %struct.subre* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.subre*, %struct.subre** %15, align 8
  %111 = getelementptr inbounds %struct.subre, %struct.subre* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %106
  %115 = load %struct.subre*, %struct.subre** %15, align 8
  %116 = getelementptr inbounds %struct.subre, %struct.subre* %115, i32 0, i32 2
  %117 = load %struct.subre*, %struct.subre** %116, align 8
  store %struct.subre* %117, %struct.subre** %15, align 8
  br label %102

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %51
  br label %120

120:                                              ; preds = %119
  %121 = call i64 @EAT(i8 signext 124)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %35, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @SEE(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @EOS, align 4
  %129 = call i64 @SEE(i32 %128)
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ true, %123 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @SEE(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = icmp eq i32 %139, 41
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @EOS, align 4
  %143 = call i64 @SEE(i32 %142)
  %144 = icmp ne i64 %143, 0
  br label %145

145:                                              ; preds = %141, %138
  %146 = phi i1 [ false, %138 ], [ %144, %141 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i32, i32* @REG_EPAREN, align 4
  %150 = call i32 @ERR(i32 %149)
  br label %151

151:                                              ; preds = %145, %131
  %152 = load %struct.subre*, %struct.subre** %14, align 8
  %153 = load %struct.subre*, %struct.subre** %13, align 8
  %154 = icmp eq %struct.subre* %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %151
  %156 = load %struct.subre*, %struct.subre** %14, align 8
  %157 = getelementptr inbounds %struct.subre, %struct.subre* %156, i32 0, i32 2
  %158 = load %struct.subre*, %struct.subre** %157, align 8
  %159 = icmp eq %struct.subre* %158, null
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.subre*, %struct.subre** %14, align 8
  %163 = getelementptr inbounds %struct.subre, %struct.subre* %162, i32 0, i32 3
  %164 = load %struct.subre*, %struct.subre** %163, align 8
  store %struct.subre* %164, %struct.subre** %15, align 8
  %165 = load %struct.subre*, %struct.subre** %14, align 8
  %166 = getelementptr inbounds %struct.subre, %struct.subre* %165, i32 0, i32 3
  store %struct.subre* null, %struct.subre** %166, align 8
  %167 = load %struct.vars*, %struct.vars** %6, align 8
  %168 = load %struct.subre*, %struct.subre** %13, align 8
  %169 = call i32 @freesubre(%struct.vars* %167, %struct.subre* %168)
  %170 = load %struct.subre*, %struct.subre** %15, align 8
  store %struct.subre* %170, %struct.subre** %13, align 8
  br label %195

171:                                              ; preds = %151
  %172 = load %struct.subre*, %struct.subre** %13, align 8
  %173 = getelementptr inbounds %struct.subre, %struct.subre* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @MESSY(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %194, label %177

177:                                              ; preds = %171
  %178 = load %struct.vars*, %struct.vars** %6, align 8
  %179 = load %struct.subre*, %struct.subre** %13, align 8
  %180 = getelementptr inbounds %struct.subre, %struct.subre* %179, i32 0, i32 3
  %181 = load %struct.subre*, %struct.subre** %180, align 8
  %182 = call i32 @freesubre(%struct.vars* %178, %struct.subre* %181)
  %183 = load %struct.subre*, %struct.subre** %13, align 8
  %184 = getelementptr inbounds %struct.subre, %struct.subre* %183, i32 0, i32 3
  store %struct.subre* null, %struct.subre** %184, align 8
  %185 = load %struct.vars*, %struct.vars** %6, align 8
  %186 = load %struct.subre*, %struct.subre** %13, align 8
  %187 = getelementptr inbounds %struct.subre, %struct.subre* %186, i32 0, i32 2
  %188 = load %struct.subre*, %struct.subre** %187, align 8
  %189 = call i32 @freesubre(%struct.vars* %185, %struct.subre* %188)
  %190 = load %struct.subre*, %struct.subre** %13, align 8
  %191 = getelementptr inbounds %struct.subre, %struct.subre* %190, i32 0, i32 2
  store %struct.subre* null, %struct.subre** %191, align 8
  %192 = load %struct.subre*, %struct.subre** %13, align 8
  %193 = getelementptr inbounds %struct.subre, %struct.subre* %192, i32 0, i32 1
  store i8 61, i8* %193, align 4
  br label %194

194:                                              ; preds = %177, %171
  br label %195

195:                                              ; preds = %194, %155
  %196 = load %struct.subre*, %struct.subre** %13, align 8
  ret %struct.subre* %196
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @subre(%struct.vars*, i8 signext, i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @NOERRN(...) #1

declare dso_local %struct.state* @newstate(i32) #1

declare dso_local i32 @EMPTYARC(%struct.state*, %struct.state*) #1

declare dso_local %struct.subre* @parsebranch(%struct.vars*, i32, i32, %struct.state*, %struct.state*, i32) #1

declare dso_local i32 @UP(i32) #1

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i64 @SEE(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @freesubre(%struct.vars*, %struct.subre*) #1

declare dso_local i32 @MESSY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
