; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cfindloop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cfindloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i32*, i32* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.cnfa = type { i32 }
%struct.colormap = type { i32 }
%struct.dfa = type { i32 }

@SHORTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0Acsearch at %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cbetween %ld and %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\0Acfind trying at %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"tentative end %ld\0A\00", align 1
@REG_OKAY = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.cnfa*, %struct.colormap*, %struct.dfa*, %struct.dfa*, i32**)* @cfindloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfindloop(%struct.vars* %0, %struct.cnfa* %1, %struct.colormap* %2, %struct.dfa* %3, %struct.dfa* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vars*, align 8
  %9 = alloca %struct.cnfa*, align 8
  %10 = alloca %struct.colormap*, align 8
  %11 = alloca %struct.dfa*, align 8
  %12 = alloca %struct.dfa*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %8, align 8
  store %struct.cnfa* %1, %struct.cnfa** %9, align 8
  store %struct.colormap* %2, %struct.colormap** %10, align 8
  store %struct.dfa* %3, %struct.dfa** %11, align 8
  store %struct.dfa* %4, %struct.dfa** %12, align 8
  store i32** %5, i32*** %13, align 8
  %24 = load %struct.vars*, %struct.vars** %8, align 8
  %25 = getelementptr inbounds %struct.vars, %struct.vars* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SHORTER, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %22, align 4
  %33 = load %struct.dfa*, %struct.dfa** %11, align 8
  %34 = icmp ne %struct.dfa* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load %struct.dfa*, %struct.dfa** %12, align 8
  %37 = icmp ne %struct.dfa* %36, null
  br label %38

38:                                               ; preds = %35, %6
  %39 = phi i1 [ false, %6 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  store i32* null, i32** %16, align 8
  %42 = load %struct.vars*, %struct.vars** %8, align 8
  %43 = getelementptr inbounds %struct.vars, %struct.vars* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %18, align 8
  br label %45

45:                                               ; preds = %222, %38
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @LOFF(i32* %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @MDEBUG(i8* %49)
  %51 = load %struct.vars*, %struct.vars** %8, align 8
  %52 = load %struct.dfa*, %struct.dfa** %12, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = load %struct.vars*, %struct.vars** %8, align 8
  %56 = getelementptr inbounds %struct.vars, %struct.vars* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = call i32* @shortest(%struct.vars* %51, %struct.dfa* %52, i32* %53, i32* %54, i32* %57, i32** %16, i32* null)
  store i32* %58, i32** %18, align 8
  %59 = call i64 (...) @ISERR()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %45
  %62 = load i32*, i32** %16, align 8
  %63 = load i32**, i32*** %13, align 8
  store i32* %62, i32** %63, align 8
  %64 = load %struct.vars*, %struct.vars** %8, align 8
  %65 = getelementptr inbounds %struct.vars, %struct.vars* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  br label %232

67:                                               ; preds = %45
  %68 = load i32*, i32** %18, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %228

71:                                               ; preds = %67
  %72 = load i32*, i32** %16, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32*, i32** %16, align 8
  store i32* %76, i32** %17, align 8
  store i32* null, i32** %16, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @LOFF(i32* %77)
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @LOFF(i32* %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @MDEBUG(i8* %82)
  %84 = load i32*, i32** %17, align 8
  store i32* %84, i32** %14, align 8
  br label %85

85:                                               ; preds = %216, %71
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %18, align 8
  %88 = icmp ule i32* %86, %87
  br i1 %88, label %89, label %219

89:                                               ; preds = %85
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @LOFF(i32* %90)
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @MDEBUG(i8* %93)
  %95 = load i32*, i32** %14, align 8
  store i32* %95, i32** %19, align 8
  %96 = load %struct.vars*, %struct.vars** %8, align 8
  %97 = getelementptr inbounds %struct.vars, %struct.vars* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %20, align 8
  br label %99

99:                                               ; preds = %214, %89
  %100 = load i32, i32* %22, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.vars*, %struct.vars** %8, align 8
  %104 = load %struct.dfa*, %struct.dfa** %11, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = call i32* @shortest(%struct.vars* %103, %struct.dfa* %104, i32* %105, i32* %106, i32* %107, i32** null, i32* %23)
  store i32* %108, i32** %15, align 8
  br label %115

109:                                              ; preds = %99
  %110 = load %struct.vars*, %struct.vars** %8, align 8
  %111 = load %struct.dfa*, %struct.dfa** %11, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32* @longest(%struct.vars* %110, %struct.dfa* %111, i32* %112, i32* %113, i32* %23)
  store i32* %114, i32** %15, align 8
  br label %115

115:                                              ; preds = %109, %102
  %116 = call i64 (...) @ISERR()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32*, i32** %16, align 8
  %120 = load i32**, i32*** %13, align 8
  store i32* %119, i32** %120, align 8
  %121 = load %struct.vars*, %struct.vars** %8, align 8
  %122 = getelementptr inbounds %struct.vars, %struct.vars* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %7, align 4
  br label %232

124:                                              ; preds = %115
  %125 = load i32, i32* %23, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32*, i32** %16, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32*, i32** %14, align 8
  store i32* %131, i32** %16, align 8
  br label %132

132:                                              ; preds = %130, %127, %124
  %133 = load i32*, i32** %15, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %215

136:                                              ; preds = %132
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @LOFF(i32* %137)
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @MDEBUG(i8* %140)
  %142 = load %struct.vars*, %struct.vars** %8, align 8
  %143 = getelementptr inbounds %struct.vars, %struct.vars* %142, i32 0, i32 2
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load %struct.vars*, %struct.vars** %8, align 8
  %146 = getelementptr inbounds %struct.vars, %struct.vars* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @zapallsubs(%struct.TYPE_5__* %144, i64 %147)
  %149 = load %struct.vars*, %struct.vars** %8, align 8
  %150 = load %struct.vars*, %struct.vars** %8, align 8
  %151 = getelementptr inbounds %struct.vars, %struct.vars* %150, i32 0, i32 3
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i32*, i32** %14, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = call i32 @cdissect(%struct.vars* %149, %struct.TYPE_6__* %154, i32* %155, i32* %156)
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* @REG_OKAY, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %136
  %162 = load %struct.vars*, %struct.vars** %8, align 8
  %163 = getelementptr inbounds %struct.vars, %struct.vars* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %161
  %167 = load i32*, i32** %14, align 8
  %168 = call i8* @OFF(i32* %167)
  %169 = load %struct.vars*, %struct.vars** %8, align 8
  %170 = getelementptr inbounds %struct.vars, %struct.vars* %169, i32 0, i32 2
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i8* %168, i8** %173, align 8
  %174 = load i32*, i32** %15, align 8
  %175 = call i8* @OFF(i32* %174)
  %176 = load %struct.vars*, %struct.vars** %8, align 8
  %177 = getelementptr inbounds %struct.vars, %struct.vars* %176, i32 0, i32 2
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  store i8* %175, i8** %180, align 8
  br label %181

181:                                              ; preds = %166, %161
  %182 = load i32*, i32** %16, align 8
  %183 = load i32**, i32*** %13, align 8
  store i32* %182, i32** %183, align 8
  %184 = load i32, i32* @REG_OKAY, align 4
  store i32 %184, i32* %7, align 4
  br label %232

185:                                              ; preds = %136
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* @REG_NOMATCH, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i32, i32* %21, align 4
  %191 = call i32 @ERR(i32 %190)
  %192 = load i32*, i32** %16, align 8
  %193 = load i32**, i32*** %13, align 8
  store i32* %192, i32** %193, align 8
  %194 = load i32, i32* %21, align 4
  store i32 %194, i32* %7, align 4
  br label %232

195:                                              ; preds = %185
  %196 = load i32, i32* %22, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load i32*, i32** %15, align 8
  %200 = load i32*, i32** %20, align 8
  %201 = icmp eq i32* %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %215

203:                                              ; preds = %198
  %204 = load i32*, i32** %15, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32* %205, i32** %19, align 8
  br label %214

206:                                              ; preds = %195
  %207 = load i32*, i32** %15, align 8
  %208 = load i32*, i32** %14, align 8
  %209 = icmp eq i32* %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %215

211:                                              ; preds = %206
  %212 = load i32*, i32** %15, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 -1
  store i32* %213, i32** %20, align 8
  br label %214

214:                                              ; preds = %211, %203
  br label %99

215:                                              ; preds = %210, %202, %135
  br label %216

216:                                              ; preds = %215
  %217 = load i32*, i32** %14, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %14, align 8
  br label %85

219:                                              ; preds = %85
  %220 = load i32*, i32** %18, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %18, align 8
  br label %222

222:                                              ; preds = %219
  %223 = load i32*, i32** %18, align 8
  %224 = load %struct.vars*, %struct.vars** %8, align 8
  %225 = getelementptr inbounds %struct.vars, %struct.vars* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ult i32* %223, %226
  br i1 %227, label %45, label %228

228:                                              ; preds = %222, %70
  %229 = load i32*, i32** %16, align 8
  %230 = load i32**, i32*** %13, align 8
  store i32* %229, i32** %230, align 8
  %231 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %231, i32* %7, align 4
  br label %232

232:                                              ; preds = %228, %189, %181, %118, %61
  %233 = load i32, i32* %7, align 4
  ret i32 %233
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i32 @LOFF(i32*) #1

declare dso_local i32* @shortest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32* @longest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*) #1

declare dso_local i32 @zapallsubs(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @cdissect(%struct.vars*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i8* @OFF(i32*) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
