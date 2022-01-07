; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_ccondissect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_ccondissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { i8, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dfa = type { i32 }

@SHORTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cconcat %d\0A\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"tentative midpoint %ld\0A\00", align 1
@REG_OKAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"successful\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%d no midpoint\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%d failed midpoint\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%d: new midpoint %ld\0A\00", align 1
@REG_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.subre*, i32*, i32*)* @ccondissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccondissect(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.subre*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dfa*, align 8
  %11 = alloca %struct.dfa*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.subre* %1, %struct.subre** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.subre*, %struct.subre** %7, align 8
  %15 = getelementptr inbounds %struct.subre, %struct.subre* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 46
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.subre*, %struct.subre** %7, align 8
  %22 = getelementptr inbounds %struct.subre, %struct.subre* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.subre*, %struct.subre** %7, align 8
  %27 = getelementptr inbounds %struct.subre, %struct.subre* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br label %33

33:                                               ; preds = %25, %4
  %34 = phi i1 [ false, %4 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.subre*, %struct.subre** %7, align 8
  %38 = getelementptr inbounds %struct.subre, %struct.subre* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.subre*, %struct.subre** %7, align 8
  %43 = getelementptr inbounds %struct.subre, %struct.subre* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br label %49

49:                                               ; preds = %41, %33
  %50 = phi i1 [ false, %33 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.subre*, %struct.subre** %7, align 8
  %54 = getelementptr inbounds %struct.subre, %struct.subre* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SHORTER, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.vars*, %struct.vars** %6, align 8
  %65 = load %struct.subre*, %struct.subre** %7, align 8
  %66 = getelementptr inbounds %struct.subre, %struct.subre* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call %struct.dfa* @getsubdfa(%struct.vars* %64, %struct.TYPE_6__* %67)
  store %struct.dfa* %68, %struct.dfa** %10, align 8
  %69 = call i32 (...) @NOERR()
  %70 = load %struct.vars*, %struct.vars** %6, align 8
  %71 = load %struct.subre*, %struct.subre** %7, align 8
  %72 = getelementptr inbounds %struct.subre, %struct.subre* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call %struct.dfa* @getsubdfa(%struct.vars* %70, %struct.TYPE_6__* %73)
  store %struct.dfa* %74, %struct.dfa** %11, align 8
  %75 = call i32 (...) @NOERR()
  %76 = load %struct.subre*, %struct.subre** %7, align 8
  %77 = getelementptr inbounds %struct.subre, %struct.subre* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @MDEBUG(i8* %80)
  %82 = load %struct.vars*, %struct.vars** %6, align 8
  %83 = load %struct.dfa*, %struct.dfa** %10, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32* @longest(%struct.vars* %82, %struct.dfa* %83, i32* %84, i32* %85, i32* null)
  store i32* %86, i32** %12, align 8
  %87 = call i32 (...) @NOERR()
  %88 = load i32*, i32** %12, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %49
  %91 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %91, i32* %5, align 4
  br label %189

92:                                               ; preds = %49
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @LOFF(i32* %93)
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @MDEBUG(i8* %96)
  br label %98

98:                                               ; preds = %170, %92
  %99 = load %struct.vars*, %struct.vars** %6, align 8
  %100 = load %struct.dfa*, %struct.dfa** %11, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32* @longest(%struct.vars* %99, %struct.dfa* %100, i32* %101, i32* %102, i32* null)
  %104 = load i32*, i32** %9, align 8
  %105 = icmp eq i32* %103, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %98
  %107 = load %struct.vars*, %struct.vars** %6, align 8
  %108 = load %struct.subre*, %struct.subre** %7, align 8
  %109 = getelementptr inbounds %struct.subre, %struct.subre* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @cdissect(%struct.vars* %107, %struct.TYPE_6__* %110, i32* %111, i32* %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @REG_OKAY, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %106
  %118 = load %struct.vars*, %struct.vars** %6, align 8
  %119 = load %struct.subre*, %struct.subre** %7, align 8
  %120 = getelementptr inbounds %struct.subre, %struct.subre* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @cdissect(%struct.vars* %118, %struct.TYPE_6__* %121, i32* %122, i32* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @REG_OKAY, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = call i32 @MDEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @REG_OKAY, align 4
  store i32 %130, i32* %5, align 4
  br label %189

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %106
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @REG_NOMATCH, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %5, align 4
  br label %189

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %98
  %140 = call i32 (...) @NOERR()
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = icmp eq i32* %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.subre*, %struct.subre** %7, align 8
  %146 = getelementptr inbounds %struct.subre, %struct.subre* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @MDEBUG(i8* %149)
  %151 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %151, i32* %5, align 4
  br label %189

152:                                              ; preds = %139
  %153 = load %struct.vars*, %struct.vars** %6, align 8
  %154 = load %struct.dfa*, %struct.dfa** %10, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 -1
  %158 = call i32* @longest(%struct.vars* %153, %struct.dfa* %154, i32* %155, i32* %157, i32* null)
  store i32* %158, i32** %12, align 8
  %159 = call i32 (...) @NOERR()
  %160 = load i32*, i32** %12, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %152
  %163 = load %struct.subre*, %struct.subre** %7, align 8
  %164 = getelementptr inbounds %struct.subre, %struct.subre* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @MDEBUG(i8* %167)
  %169 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %169, i32* %5, align 4
  br label %189

170:                                              ; preds = %152
  %171 = load %struct.subre*, %struct.subre** %7, align 8
  %172 = getelementptr inbounds %struct.subre, %struct.subre* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = call i32 @LOFF(i32* %174)
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @MDEBUG(i8* %177)
  %179 = load %struct.vars*, %struct.vars** %6, align 8
  %180 = load %struct.subre*, %struct.subre** %7, align 8
  %181 = getelementptr inbounds %struct.subre, %struct.subre* %180, i32 0, i32 2
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = call i32 @zaptreesubs(%struct.vars* %179, %struct.TYPE_6__* %182)
  %184 = load %struct.vars*, %struct.vars** %6, align 8
  %185 = load %struct.subre*, %struct.subre** %7, align 8
  %186 = getelementptr inbounds %struct.subre, %struct.subre* %185, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = call i32 @zaptreesubs(%struct.vars* %184, %struct.TYPE_6__* %187)
  br label %98

189:                                              ; preds = %162, %144, %136, %128, %90
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dfa* @getsubdfa(%struct.vars*, %struct.TYPE_6__*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i32* @longest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*) #1

declare dso_local i32 @LOFF(i32*) #1

declare dso_local i32 @cdissect(%struct.vars*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @zaptreesubs(%struct.vars*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
