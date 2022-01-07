; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cbrdissect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cbrdissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i64 (i32*, i32*, i64)* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.subre = type { i32, i32, i32, i8, i32 }

@.str = private unnamed_addr constant [24 x i8] c"cbackref n%d %d{%d-%d}\0A\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cbackref matched trivially\0A\00", align 1
@REG_OKAY = common dso_local global i32 0, align 4
@DUPINF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cbackref matched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.subre*, i32*, i32*)* @cbrdissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbrdissect(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.subre*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.subre* %1, %struct.subre** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.subre*, %struct.subre** %7, align 8
  %19 = getelementptr inbounds %struct.subre, %struct.subre* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.subre*, %struct.subre** %7, align 8
  %22 = getelementptr inbounds %struct.subre, %struct.subre* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.subre*, %struct.subre** %7, align 8
  %25 = getelementptr inbounds %struct.subre, %struct.subre* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.subre*, %struct.subre** %7, align 8
  %28 = icmp ne %struct.subre* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.subre*, %struct.subre** %7, align 8
  %32 = getelementptr inbounds %struct.subre, %struct.subre* %31, i32 0, i32 3
  %33 = load i8, i8* %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 98
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.vars*, %struct.vars** %6, align 8
  %45 = getelementptr inbounds %struct.vars, %struct.vars* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.subre*, %struct.subre** %7, align 8
  %51 = getelementptr inbounds %struct.subre, %struct.subre* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @MDEBUG(i8* %57)
  %59 = load %struct.vars*, %struct.vars** %6, align 8
  %60 = getelementptr inbounds %struct.vars, %struct.vars* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %4
  %69 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %69, i32* %5, align 4
  br label %192

70:                                               ; preds = %4
  %71 = load %struct.vars*, %struct.vars** %6, align 8
  %72 = getelementptr inbounds %struct.vars, %struct.vars* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.vars*, %struct.vars** %6, align 8
  %75 = getelementptr inbounds %struct.vars, %struct.vars* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %73, i64 %82
  store i32* %83, i32** %14, align 8
  %84 = load %struct.vars*, %struct.vars** %6, align 8
  %85 = getelementptr inbounds %struct.vars, %struct.vars* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.vars*, %struct.vars** %6, align 8
  %93 = getelementptr inbounds %struct.vars, %struct.vars* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = sub i64 %91, %100
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %70
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = icmp eq i32* %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = call i32 @MDEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @REG_OKAY, align 4
  store i32 %114, i32* %5, align 4
  br label %192

115:                                              ; preds = %108, %104
  %116 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %116, i32* %5, align 4
  br label %192

117:                                              ; preds = %70
  %118 = load i32*, i32** %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = icmp eq i32* %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i32 @MDEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @REG_OKAY, align 4
  store i32 %126, i32* %5, align 4
  br label %192

127:                                              ; preds = %121
  %128 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %128, i32* %5, align 4
  br label %192

129:                                              ; preds = %117
  %130 = load i32*, i32** %9, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = icmp ugt i32* %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = ptrtoint i32* %135 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = urem i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %129
  %146 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %146, i32* %5, align 4
  br label %192

147:                                              ; preds = %129
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* %13, align 8
  %150 = udiv i64 %148, %149
  store i64 %150, i64* %11, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp ult i64 %151, %153
  br i1 %154, label %164, label %155

155:                                              ; preds = %147
  %156 = load i64, i64* %11, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp ugt i64 %156, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @DUPINF, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160, %147
  %165 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %165, i32* %5, align 4
  br label %192

166:                                              ; preds = %160, %155
  %167 = load i32*, i32** %8, align 8
  store i32* %167, i32** %15, align 8
  br label %168

168:                                              ; preds = %185, %166
  %169 = load i64, i64* %11, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %11, align 8
  %171 = icmp ugt i64 %169, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load %struct.vars*, %struct.vars** %6, align 8
  %174 = getelementptr inbounds %struct.vars, %struct.vars* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64 (i32*, i32*, i64)*, i64 (i32*, i32*, i64)** %176, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = load i64, i64* %13, align 8
  %181 = call i64 %177(i32* %178, i32* %179, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %184, i32* %5, align 4
  br label %192

185:                                              ; preds = %172
  %186 = load i64, i64* %13, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 %186
  store i32* %188, i32** %15, align 8
  br label %168

189:                                              ; preds = %168
  %190 = call i32 @MDEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %191 = load i32, i32* @REG_OKAY, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %189, %183, %164, %145, %127, %124, %115, %112, %68
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MDEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
