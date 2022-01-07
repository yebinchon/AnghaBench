; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_matchuntil.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_matchuntil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i64*, i64* }
%struct.dfa = type { %struct.TYPE_2__*, %struct.sset*, %struct.colormap* }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.sset = type { i32, %struct.sset**, i64* }
%struct.colormap = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c">>> startup >>>\0A\00", align 1
@REG_NOTBOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"color %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c">>> at c%d >>>\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"char %c, color %ld\0A\00", align 1
@REG_NOTEOL = common dso_local global i32 0, align 4
@POSTSTATE = common dso_local global i32 0, align 4
@REG_FTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.dfa*, i64*, %struct.sset**, i64**)* @matchuntil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matchuntil(%struct.vars* %0, %struct.dfa* %1, i64* %2, %struct.sset** %3, i64** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vars*, align 8
  %8 = alloca %struct.dfa*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sset**, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sset*, align 8
  %15 = alloca %struct.sset*, align 8
  %16 = alloca %struct.colormap*, align 8
  store %struct.vars* %0, %struct.vars** %7, align 8
  store %struct.dfa* %1, %struct.dfa** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.sset** %3, %struct.sset*** %10, align 8
  store i64** %4, i64*** %11, align 8
  %17 = load i64**, i64*** %11, align 8
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %12, align 8
  %19 = load %struct.sset**, %struct.sset*** %10, align 8
  %20 = load %struct.sset*, %struct.sset** %19, align 8
  store %struct.sset* %20, %struct.sset** %14, align 8
  %21 = load %struct.dfa*, %struct.dfa** %8, align 8
  %22 = getelementptr inbounds %struct.dfa, %struct.dfa* %21, i32 0, i32 2
  %23 = load %struct.colormap*, %struct.colormap** %22, align 8
  store %struct.colormap* %23, %struct.colormap** %16, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i64*, i64** %12, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = icmp ugt i64* %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26, %5
  %31 = load %struct.vars*, %struct.vars** %7, align 8
  %32 = getelementptr inbounds %struct.vars, %struct.vars* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %12, align 8
  %34 = load %struct.vars*, %struct.vars** %7, align 8
  %35 = load %struct.dfa*, %struct.dfa** %8, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = call %struct.sset* @initialize(%struct.vars* %34, %struct.dfa* %35, i64* %36)
  store %struct.sset* %37, %struct.sset** %14, align 8
  %38 = load %struct.sset*, %struct.sset** %14, align 8
  %39 = icmp eq %struct.sset* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %229

41:                                               ; preds = %30
  %42 = call i32 @FDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.dfa*, %struct.dfa** %8, align 8
  %44 = getelementptr inbounds %struct.dfa, %struct.dfa* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.vars*, %struct.vars** %7, align 8
  %49 = getelementptr inbounds %struct.vars, %struct.vars* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @REG_NOTBOL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %47, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @FDEBUG(i8* %60)
  %62 = load %struct.vars*, %struct.vars** %7, align 8
  %63 = load %struct.dfa*, %struct.dfa** %8, align 8
  %64 = load %struct.sset*, %struct.sset** %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load %struct.vars*, %struct.vars** %7, align 8
  %68 = getelementptr inbounds %struct.vars, %struct.vars* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = call %struct.sset* @miss(%struct.vars* %62, %struct.dfa* %63, %struct.sset* %64, i64 %65, i64* %66, i64* %69)
  store %struct.sset* %70, %struct.sset** %14, align 8
  %71 = load %struct.sset*, %struct.sset** %14, align 8
  %72 = icmp eq %struct.sset* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %229

74:                                               ; preds = %41
  %75 = load i64*, i64** %12, align 8
  %76 = load %struct.sset*, %struct.sset** %14, align 8
  %77 = getelementptr inbounds %struct.sset, %struct.sset* %76, i32 0, i32 2
  store i64* %75, i64** %77, align 8
  br label %83

78:                                               ; preds = %26
  %79 = load %struct.sset*, %struct.sset** %14, align 8
  %80 = icmp eq %struct.sset* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %229

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %74
  %84 = load %struct.sset*, %struct.sset** %14, align 8
  store %struct.sset* %84, %struct.sset** %15, align 8
  br label %85

85:                                               ; preds = %117, %83
  %86 = load i64*, i64** %12, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = icmp ult i64* %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %85
  %90 = load %struct.colormap*, %struct.colormap** %16, align 8
  %91 = load i64*, i64** %12, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @GETCOLOR(%struct.colormap* %90, i64 %92)
  store i64 %93, i64* %13, align 8
  %94 = load %struct.sset*, %struct.sset** %14, align 8
  %95 = getelementptr inbounds %struct.sset, %struct.sset* %94, i32 0, i32 1
  %96 = load %struct.sset**, %struct.sset*** %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.sset*, %struct.sset** %96, i64 %97
  %99 = load %struct.sset*, %struct.sset** %98, align 8
  store %struct.sset* %99, %struct.sset** %15, align 8
  %100 = load %struct.sset*, %struct.sset** %15, align 8
  %101 = icmp eq %struct.sset* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %89
  %103 = load %struct.vars*, %struct.vars** %7, align 8
  %104 = load %struct.dfa*, %struct.dfa** %8, align 8
  %105 = load %struct.sset*, %struct.sset** %14, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load %struct.vars*, %struct.vars** %7, align 8
  %110 = getelementptr inbounds %struct.vars, %struct.vars* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = call %struct.sset* @miss(%struct.vars* %103, %struct.dfa* %104, %struct.sset* %105, i64 %106, i64* %108, i64* %111)
  store %struct.sset* %112, %struct.sset** %15, align 8
  %113 = load %struct.sset*, %struct.sset** %15, align 8
  %114 = icmp eq %struct.sset* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %124

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %89
  %118 = load i64*, i64** %12, align 8
  %119 = getelementptr inbounds i64, i64* %118, i32 1
  store i64* %119, i64** %12, align 8
  %120 = load i64*, i64** %12, align 8
  %121 = load %struct.sset*, %struct.sset** %15, align 8
  %122 = getelementptr inbounds %struct.sset, %struct.sset* %121, i32 0, i32 2
  store i64* %120, i64** %122, align 8
  %123 = load %struct.sset*, %struct.sset** %15, align 8
  store %struct.sset* %123, %struct.sset** %14, align 8
  br label %85

124:                                              ; preds = %115, %85
  %125 = load %struct.sset*, %struct.sset** %15, align 8
  %126 = load %struct.sset**, %struct.sset*** %10, align 8
  store %struct.sset* %125, %struct.sset** %126, align 8
  %127 = load i64*, i64** %12, align 8
  %128 = load i64**, i64*** %11, align 8
  store i64* %127, i64** %128, align 8
  %129 = load %struct.sset*, %struct.sset** %15, align 8
  %130 = icmp eq %struct.sset* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %229

132:                                              ; preds = %124
  %133 = load i64*, i64** %12, align 8
  %134 = load %struct.vars*, %struct.vars** %7, align 8
  %135 = getelementptr inbounds %struct.vars, %struct.vars* %134, i32 0, i32 2
  %136 = load i64*, i64** %135, align 8
  %137 = icmp ult i64* %133, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %132
  %139 = load %struct.sset*, %struct.sset** %14, align 8
  %140 = load %struct.dfa*, %struct.dfa** %8, align 8
  %141 = getelementptr inbounds %struct.dfa, %struct.dfa* %140, i32 0, i32 1
  %142 = load %struct.sset*, %struct.sset** %141, align 8
  %143 = ptrtoint %struct.sset* %139 to i64
  %144 = ptrtoint %struct.sset* %142 to i64
  %145 = sub i64 %143, %144
  %146 = sdiv exact i64 %145, 24
  %147 = trunc i64 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @FDEBUG(i8* %149)
  %151 = load %struct.colormap*, %struct.colormap** %16, align 8
  %152 = load i64*, i64** %12, align 8
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @GETCOLOR(%struct.colormap* %151, i64 %153)
  store i64 %154, i64* %13, align 8
  %155 = load i64*, i64** %12, align 8
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i8
  %158 = load i64, i64* %13, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @FDEBUG(i8* %159)
  %161 = load %struct.sset*, %struct.sset** %14, align 8
  %162 = getelementptr inbounds %struct.sset, %struct.sset* %161, i32 0, i32 1
  %163 = load %struct.sset**, %struct.sset*** %162, align 8
  %164 = load i64, i64* %13, align 8
  %165 = getelementptr inbounds %struct.sset*, %struct.sset** %163, i64 %164
  %166 = load %struct.sset*, %struct.sset** %165, align 8
  store %struct.sset* %166, %struct.sset** %15, align 8
  %167 = load %struct.sset*, %struct.sset** %15, align 8
  %168 = icmp eq %struct.sset* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %138
  %170 = load %struct.vars*, %struct.vars** %7, align 8
  %171 = load %struct.dfa*, %struct.dfa** %8, align 8
  %172 = load %struct.sset*, %struct.sset** %14, align 8
  %173 = load i64, i64* %13, align 8
  %174 = load i64*, i64** %12, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = load %struct.vars*, %struct.vars** %7, align 8
  %177 = getelementptr inbounds %struct.vars, %struct.vars* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = call %struct.sset* @miss(%struct.vars* %170, %struct.dfa* %171, %struct.sset* %172, i64 %173, i64* %175, i64* %178)
  store %struct.sset* %179, %struct.sset** %15, align 8
  br label %180

180:                                              ; preds = %169, %138
  br label %217

181:                                              ; preds = %132
  %182 = load i64*, i64** %12, align 8
  %183 = load %struct.vars*, %struct.vars** %7, align 8
  %184 = getelementptr inbounds %struct.vars, %struct.vars* %183, i32 0, i32 2
  %185 = load i64*, i64** %184, align 8
  %186 = icmp eq i64* %182, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load %struct.dfa*, %struct.dfa** %8, align 8
  %190 = getelementptr inbounds %struct.dfa, %struct.dfa* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load %struct.vars*, %struct.vars** %7, align 8
  %195 = getelementptr inbounds %struct.vars, %struct.vars* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @REG_NOTEOL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 0, i32 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %193, i64 %202
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %13, align 8
  %205 = load i64, i64* %13, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 @FDEBUG(i8* %206)
  %208 = load %struct.vars*, %struct.vars** %7, align 8
  %209 = load %struct.dfa*, %struct.dfa** %8, align 8
  %210 = load %struct.sset*, %struct.sset** %14, align 8
  %211 = load i64, i64* %13, align 8
  %212 = load i64*, i64** %12, align 8
  %213 = load %struct.vars*, %struct.vars** %7, align 8
  %214 = getelementptr inbounds %struct.vars, %struct.vars* %213, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = call %struct.sset* @miss(%struct.vars* %208, %struct.dfa* %209, %struct.sset* %210, i64 %211, i64* %212, i64* %215)
  store %struct.sset* %216, %struct.sset** %15, align 8
  br label %217

217:                                              ; preds = %181, %180
  %218 = load %struct.sset*, %struct.sset** %15, align 8
  %219 = icmp eq %struct.sset* %218, null
  br i1 %219, label %227, label %220

220:                                              ; preds = %217
  %221 = load %struct.sset*, %struct.sset** %15, align 8
  %222 = getelementptr inbounds %struct.sset, %struct.sset* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @POSTSTATE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %220, %217
  store i32 0, i32* %6, align 4
  br label %229

228:                                              ; preds = %220
  store i32 1, i32* %6, align 4
  br label %229

229:                                              ; preds = %228, %227, %131, %81, %73, %40
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local %struct.sset* @initialize(%struct.vars*, %struct.dfa*, i64*) #1

declare dso_local i32 @FDEBUG(i8*) #1

declare dso_local %struct.sset* @miss(%struct.vars*, %struct.dfa*, %struct.sset*, i64, i64*, i64*) #1

declare dso_local i64 @GETCOLOR(%struct.colormap*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
