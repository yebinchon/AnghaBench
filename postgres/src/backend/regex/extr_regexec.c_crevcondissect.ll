; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_crevcondissect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_crevcondissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { i8, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dfa = type { i32 }

@SHORTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"crevcon %d\0A\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"tentative midpoint %ld\0A\00", align 1
@REG_OKAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"successful\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%d no midpoint\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%d failed midpoint\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%d: new midpoint %ld\0A\00", align 1
@REG_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.subre*, i32*, i32*)* @crevcondissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crevcondissect(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
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
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.vars*, %struct.vars** %6, align 8
  %62 = load %struct.subre*, %struct.subre** %7, align 8
  %63 = getelementptr inbounds %struct.subre, %struct.subre* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call %struct.dfa* @getsubdfa(%struct.vars* %61, %struct.TYPE_6__* %64)
  store %struct.dfa* %65, %struct.dfa** %10, align 8
  %66 = call i32 (...) @NOERR()
  %67 = load %struct.vars*, %struct.vars** %6, align 8
  %68 = load %struct.subre*, %struct.subre** %7, align 8
  %69 = getelementptr inbounds %struct.subre, %struct.subre* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call %struct.dfa* @getsubdfa(%struct.vars* %67, %struct.TYPE_6__* %70)
  store %struct.dfa* %71, %struct.dfa** %11, align 8
  %72 = call i32 (...) @NOERR()
  %73 = load %struct.subre*, %struct.subre** %7, align 8
  %74 = getelementptr inbounds %struct.subre, %struct.subre* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @MDEBUG(i8* %77)
  %79 = load %struct.vars*, %struct.vars** %6, align 8
  %80 = load %struct.dfa*, %struct.dfa** %10, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32* @shortest(%struct.vars* %79, %struct.dfa* %80, i32* %81, i32* %82, i32* %83, i32** null, i32* null)
  store i32* %84, i32** %12, align 8
  %85 = call i32 (...) @NOERR()
  %86 = load i32*, i32** %12, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %49
  %89 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %89, i32* %5, align 4
  br label %188

90:                                               ; preds = %49
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @LOFF(i32* %91)
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @MDEBUG(i8* %94)
  br label %96

96:                                               ; preds = %169, %90
  %97 = load %struct.vars*, %struct.vars** %6, align 8
  %98 = load %struct.dfa*, %struct.dfa** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32* @longest(%struct.vars* %97, %struct.dfa* %98, i32* %99, i32* %100, i32* null)
  %102 = load i32*, i32** %9, align 8
  %103 = icmp eq i32* %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %96
  %105 = load %struct.vars*, %struct.vars** %6, align 8
  %106 = load %struct.subre*, %struct.subre** %7, align 8
  %107 = getelementptr inbounds %struct.subre, %struct.subre* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @cdissect(%struct.vars* %105, %struct.TYPE_6__* %108, i32* %109, i32* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @REG_OKAY, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %104
  %116 = load %struct.vars*, %struct.vars** %6, align 8
  %117 = load %struct.subre*, %struct.subre** %7, align 8
  %118 = getelementptr inbounds %struct.subre, %struct.subre* %117, i32 0, i32 1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @cdissect(%struct.vars* %116, %struct.TYPE_6__* %119, i32* %120, i32* %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @REG_OKAY, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = call i32 @MDEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @REG_OKAY, align 4
  store i32 %128, i32* %5, align 4
  br label %188

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %104
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @REG_NOMATCH, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %5, align 4
  br label %188

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %96
  %138 = call i32 (...) @NOERR()
  %139 = load i32*, i32** %12, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = icmp eq i32* %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.subre*, %struct.subre** %7, align 8
  %144 = getelementptr inbounds %struct.subre, %struct.subre* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @MDEBUG(i8* %147)
  %149 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %149, i32* %5, align 4
  br label %188

150:                                              ; preds = %137
  %151 = load %struct.vars*, %struct.vars** %6, align 8
  %152 = load %struct.dfa*, %struct.dfa** %10, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32*, i32** %9, align 8
  %157 = call i32* @shortest(%struct.vars* %151, %struct.dfa* %152, i32* %153, i32* %155, i32* %156, i32** null, i32* null)
  store i32* %157, i32** %12, align 8
  %158 = call i32 (...) @NOERR()
  %159 = load i32*, i32** %12, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %150
  %162 = load %struct.subre*, %struct.subre** %7, align 8
  %163 = getelementptr inbounds %struct.subre, %struct.subre* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 @MDEBUG(i8* %166)
  %168 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %168, i32* %5, align 4
  br label %188

169:                                              ; preds = %150
  %170 = load %struct.subre*, %struct.subre** %7, align 8
  %171 = getelementptr inbounds %struct.subre, %struct.subre* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @LOFF(i32* %173)
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 @MDEBUG(i8* %176)
  %178 = load %struct.vars*, %struct.vars** %6, align 8
  %179 = load %struct.subre*, %struct.subre** %7, align 8
  %180 = getelementptr inbounds %struct.subre, %struct.subre* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = call i32 @zaptreesubs(%struct.vars* %178, %struct.TYPE_6__* %181)
  %183 = load %struct.vars*, %struct.vars** %6, align 8
  %184 = load %struct.subre*, %struct.subre** %7, align 8
  %185 = getelementptr inbounds %struct.subre, %struct.subre* %184, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = call i32 @zaptreesubs(%struct.vars* %183, %struct.TYPE_6__* %186)
  br label %96

188:                                              ; preds = %161, %142, %134, %126, %88
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dfa* @getsubdfa(%struct.vars*, %struct.TYPE_6__*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i32* @shortest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @LOFF(i32*) #1

declare dso_local i32* @longest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*) #1

declare dso_local i32 @cdissect(%struct.vars*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @zaptreesubs(%struct.vars*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
