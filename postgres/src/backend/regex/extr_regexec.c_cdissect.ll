; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cdissect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cdissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { i32, i32, %struct.subre*, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"cdissect %ld-%ld %c\0A\00", align 1
@REG_CANCEL = common dso_local global i32 0, align 4
@REG_ETOOBIG = common dso_local global i32 0, align 4
@REG_OKAY = common dso_local global i32 0, align 4
@SHORTER = common dso_local global i32 0, align 4
@REG_ASSERT = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@BACKR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.subre*, i32*, i32*)* @cdissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdissect(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.subre*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.subre* %1, %struct.subre** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.subre*, %struct.subre** %7, align 8
  %12 = icmp ne %struct.subre* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @LOFF(i32* %15)
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @LOFF(i32* %17)
  %19 = load %struct.subre*, %struct.subre** %7, align 8
  %20 = getelementptr inbounds %struct.subre, %struct.subre* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @MDEBUG(i8* %23)
  %25 = load %struct.vars*, %struct.vars** %6, align 8
  %26 = getelementptr inbounds %struct.vars, %struct.vars* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CANCEL_REQUESTED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @REG_CANCEL, align 4
  store i32 %31, i32* %5, align 4
  br label %208

32:                                               ; preds = %4
  %33 = load %struct.vars*, %struct.vars** %6, align 8
  %34 = getelementptr inbounds %struct.vars, %struct.vars* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @STACK_TOO_DEEP(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @REG_ETOOBIG, align 4
  store i32 %39, i32* %5, align 4
  br label %208

40:                                               ; preds = %32
  %41 = load %struct.subre*, %struct.subre** %7, align 8
  %42 = getelementptr inbounds %struct.subre, %struct.subre* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %190 [
    i32 61, label %44
    i32 98, label %59
    i32 46, label %78
    i32 124, label %113
    i32 42, label %125
    i32 40, label %153
  ]

44:                                               ; preds = %40
  %45 = load %struct.subre*, %struct.subre** %7, align 8
  %46 = getelementptr inbounds %struct.subre, %struct.subre* %45, i32 0, i32 2
  %47 = load %struct.subre*, %struct.subre** %46, align 8
  %48 = icmp eq %struct.subre* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.subre*, %struct.subre** %7, align 8
  %51 = getelementptr inbounds %struct.subre, %struct.subre* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ false, %44 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* @REG_OKAY, align 4
  store i32 %58, i32* %10, align 4
  br label %192

59:                                               ; preds = %40
  %60 = load %struct.subre*, %struct.subre** %7, align 8
  %61 = getelementptr inbounds %struct.subre, %struct.subre* %60, i32 0, i32 2
  %62 = load %struct.subre*, %struct.subre** %61, align 8
  %63 = icmp eq %struct.subre* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.subre*, %struct.subre** %7, align 8
  %66 = getelementptr inbounds %struct.subre, %struct.subre* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i1 [ false, %59 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.vars*, %struct.vars** %6, align 8
  %74 = load %struct.subre*, %struct.subre** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @cbrdissect(%struct.vars* %73, %struct.subre* %74, i32* %75, i32* %76)
  store i32 %77, i32* %10, align 4
  br label %192

78:                                               ; preds = %40
  %79 = load %struct.subre*, %struct.subre** %7, align 8
  %80 = getelementptr inbounds %struct.subre, %struct.subre* %79, i32 0, i32 2
  %81 = load %struct.subre*, %struct.subre** %80, align 8
  %82 = icmp ne %struct.subre* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.subre*, %struct.subre** %7, align 8
  %85 = getelementptr inbounds %struct.subre, %struct.subre* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ false, %78 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.subre*, %struct.subre** %7, align 8
  %93 = getelementptr inbounds %struct.subre, %struct.subre* %92, i32 0, i32 2
  %94 = load %struct.subre*, %struct.subre** %93, align 8
  %95 = getelementptr inbounds %struct.subre, %struct.subre* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SHORTER, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load %struct.vars*, %struct.vars** %6, align 8
  %102 = load %struct.subre*, %struct.subre** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @crevcondissect(%struct.vars* %101, %struct.subre* %102, i32* %103, i32* %104)
  store i32 %105, i32* %10, align 4
  br label %112

106:                                              ; preds = %88
  %107 = load %struct.vars*, %struct.vars** %6, align 8
  %108 = load %struct.subre*, %struct.subre** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @ccondissect(%struct.vars* %107, %struct.subre* %108, i32* %109, i32* %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %106, %100
  br label %192

113:                                              ; preds = %40
  %114 = load %struct.subre*, %struct.subre** %7, align 8
  %115 = getelementptr inbounds %struct.subre, %struct.subre* %114, i32 0, i32 2
  %116 = load %struct.subre*, %struct.subre** %115, align 8
  %117 = icmp ne %struct.subre* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.vars*, %struct.vars** %6, align 8
  %121 = load %struct.subre*, %struct.subre** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @caltdissect(%struct.vars* %120, %struct.subre* %121, i32* %122, i32* %123)
  store i32 %124, i32* %10, align 4
  br label %192

125:                                              ; preds = %40
  %126 = load %struct.subre*, %struct.subre** %7, align 8
  %127 = getelementptr inbounds %struct.subre, %struct.subre* %126, i32 0, i32 2
  %128 = load %struct.subre*, %struct.subre** %127, align 8
  %129 = icmp ne %struct.subre* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.subre*, %struct.subre** %7, align 8
  %133 = getelementptr inbounds %struct.subre, %struct.subre* %132, i32 0, i32 2
  %134 = load %struct.subre*, %struct.subre** %133, align 8
  %135 = getelementptr inbounds %struct.subre, %struct.subre* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SHORTER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %125
  %141 = load %struct.vars*, %struct.vars** %6, align 8
  %142 = load %struct.subre*, %struct.subre** %7, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @creviterdissect(%struct.vars* %141, %struct.subre* %142, i32* %143, i32* %144)
  store i32 %145, i32* %10, align 4
  br label %152

146:                                              ; preds = %125
  %147 = load %struct.vars*, %struct.vars** %6, align 8
  %148 = load %struct.subre*, %struct.subre** %7, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @citerdissect(%struct.vars* %147, %struct.subre* %148, i32* %149, i32* %150)
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %146, %140
  br label %192

153:                                              ; preds = %40
  %154 = load %struct.subre*, %struct.subre** %7, align 8
  %155 = getelementptr inbounds %struct.subre, %struct.subre* %154, i32 0, i32 2
  %156 = load %struct.subre*, %struct.subre** %155, align 8
  %157 = icmp ne %struct.subre* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.subre*, %struct.subre** %7, align 8
  %160 = getelementptr inbounds %struct.subre, %struct.subre* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i1 [ false, %153 ], [ %162, %158 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load %struct.subre*, %struct.subre** %7, align 8
  %168 = getelementptr inbounds %struct.subre, %struct.subre* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load %struct.vars*, %struct.vars** %6, align 8
  %174 = load %struct.subre*, %struct.subre** %7, align 8
  %175 = getelementptr inbounds %struct.subre, %struct.subre* %174, i32 0, i32 2
  %176 = load %struct.subre*, %struct.subre** %175, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @cdissect(%struct.vars* %173, %struct.subre* %176, i32* %177, i32* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @REG_OKAY, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %163
  %184 = load %struct.vars*, %struct.vars** %6, align 8
  %185 = load %struct.subre*, %struct.subre** %7, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @subset(%struct.vars* %184, %struct.subre* %185, i32* %186, i32* %187)
  br label %189

189:                                              ; preds = %183, %163
  br label %192

190:                                              ; preds = %40
  %191 = load i32, i32* @REG_ASSERT, align 4
  store i32 %191, i32* %10, align 4
  br label %192

192:                                              ; preds = %190, %189, %152, %113, %112, %69, %54
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @REG_NOMATCH, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %203, label %196

196:                                              ; preds = %192
  %197 = load %struct.subre*, %struct.subre** %7, align 8
  %198 = getelementptr inbounds %struct.subre, %struct.subre* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @BACKR, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br label %203

203:                                              ; preds = %196, %192
  %204 = phi i1 [ true, %192 ], [ %202, %196 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %203, %38, %30
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i32 @LOFF(i32*) #1

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @cbrdissect(%struct.vars*, %struct.subre*, i32*, i32*) #1

declare dso_local i32 @crevcondissect(%struct.vars*, %struct.subre*, i32*, i32*) #1

declare dso_local i32 @ccondissect(%struct.vars*, %struct.subre*, i32*, i32*) #1

declare dso_local i32 @caltdissect(%struct.vars*, %struct.subre*, i32*, i32*) #1

declare dso_local i32 @creviterdissect(%struct.vars*, %struct.subre*, i32*, i32*) #1

declare dso_local i32 @citerdissect(%struct.vars*, %struct.subre*, i32*, i32*) #1

declare dso_local i32 @subset(%struct.vars*, %struct.subre*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
