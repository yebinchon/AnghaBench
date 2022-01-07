; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_newdfa.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_newdfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32*, i32*, i32, i8*, i32, i32, i64, i32, %struct.sset*, %struct.sset*, i32*, i32*, %struct.colormap*, %struct.cnfa*, i64, %struct.arcp*, %struct.sset** }
%struct.sset = type { i32 }
%struct.arcp = type { i32 }
%struct.vars = type { i32 }
%struct.cnfa = type { i32, i64 }
%struct.colormap = type { i32 }
%struct.smalldfa = type { i32*, %struct.arcp*, %struct.sset**, %struct.sset*, %struct.dfa }

@UBITS = common dso_local global i32 0, align 4
@FEWSTATES = common dso_local global i64 0, align 8
@FEWCOLORS = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@WORK = common dso_local global i64 0, align 8
@REG_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfa* (%struct.vars*, %struct.cnfa*, %struct.colormap*, %struct.smalldfa*)* @newdfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfa* @newdfa(%struct.vars* %0, %struct.cnfa* %1, %struct.colormap* %2, %struct.smalldfa* %3) #0 {
  %5 = alloca %struct.dfa*, align 8
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.cnfa*, align 8
  %8 = alloca %struct.colormap*, align 8
  %9 = alloca %struct.smalldfa*, align 8
  %10 = alloca %struct.dfa*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.smalldfa*, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.cnfa* %1, %struct.cnfa** %7, align 8
  store %struct.colormap* %2, %struct.colormap** %8, align 8
  store %struct.smalldfa* %3, %struct.smalldfa** %9, align 8
  %14 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %15 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %20 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UBITS, align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @UBITS, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  store %struct.smalldfa* %27, %struct.smalldfa** %13, align 8
  %28 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %29 = icmp ne %struct.cnfa* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %32 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %30, %4
  %36 = phi i1 [ false, %4 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @FEWSTATES, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %106

42:                                               ; preds = %35
  %43 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %44 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FEWCOLORS, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %54 = icmp eq %struct.smalldfa* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = call i64 @MALLOC(i64 160)
  %57 = inttoptr i64 %56 to %struct.smalldfa*
  store %struct.smalldfa* %57, %struct.smalldfa** %9, align 8
  %58 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %59 = icmp eq %struct.smalldfa* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @REG_ESPACE, align 4
  %62 = call i32 @ERR(i32 %61)
  store %struct.dfa* null, %struct.dfa** %5, align 8
  br label %239

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %66 = getelementptr inbounds %struct.smalldfa, %struct.smalldfa* %65, i32 0, i32 4
  store %struct.dfa* %66, %struct.dfa** %10, align 8
  %67 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %68 = getelementptr inbounds %struct.smalldfa, %struct.smalldfa* %67, i32 0, i32 3
  %69 = load %struct.sset*, %struct.sset** %68, align 8
  %70 = load %struct.dfa*, %struct.dfa** %10, align 8
  %71 = getelementptr inbounds %struct.dfa, %struct.dfa* %70, i32 0, i32 8
  store %struct.sset* %69, %struct.sset** %71, align 8
  %72 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %73 = getelementptr inbounds %struct.smalldfa, %struct.smalldfa* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.dfa*, %struct.dfa** %10, align 8
  %76 = getelementptr inbounds %struct.dfa, %struct.dfa* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 8
  %77 = load %struct.dfa*, %struct.dfa** %10, align 8
  %78 = getelementptr inbounds %struct.dfa, %struct.dfa* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load %struct.dfa*, %struct.dfa** %10, align 8
  %83 = getelementptr inbounds %struct.dfa, %struct.dfa* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %85 = getelementptr inbounds %struct.smalldfa, %struct.smalldfa* %84, i32 0, i32 2
  %86 = load %struct.sset**, %struct.sset*** %85, align 8
  %87 = load %struct.dfa*, %struct.dfa** %10, align 8
  %88 = getelementptr inbounds %struct.dfa, %struct.dfa* %87, i32 0, i32 16
  store %struct.sset** %86, %struct.sset*** %88, align 8
  %89 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %90 = getelementptr inbounds %struct.smalldfa, %struct.smalldfa* %89, i32 0, i32 1
  %91 = load %struct.arcp*, %struct.arcp** %90, align 8
  %92 = load %struct.dfa*, %struct.dfa** %10, align 8
  %93 = getelementptr inbounds %struct.dfa, %struct.dfa* %92, i32 0, i32 15
  store %struct.arcp* %91, %struct.arcp** %93, align 8
  %94 = load %struct.dfa*, %struct.dfa** %10, align 8
  %95 = getelementptr inbounds %struct.dfa, %struct.dfa* %94, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = load %struct.smalldfa*, %struct.smalldfa** %13, align 8
  %97 = icmp eq %struct.smalldfa* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %64
  %99 = load %struct.smalldfa*, %struct.smalldfa** %9, align 8
  %100 = bitcast %struct.smalldfa* %99 to i8*
  br label %102

101:                                              ; preds = %64
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i8* [ %100, %98 ], [ null, %101 ]
  %104 = load %struct.dfa*, %struct.dfa** %10, align 8
  %105 = getelementptr inbounds %struct.dfa, %struct.dfa* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  br label %193

106:                                              ; preds = %42, %35
  %107 = call i64 @MALLOC(i64 128)
  %108 = inttoptr i64 %107 to %struct.dfa*
  store %struct.dfa* %108, %struct.dfa** %10, align 8
  %109 = load %struct.dfa*, %struct.dfa** %10, align 8
  %110 = icmp eq %struct.dfa* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @REG_ESPACE, align 4
  %113 = call i32 @ERR(i32 %112)
  store %struct.dfa* null, %struct.dfa** %5, align 8
  br label %239

114:                                              ; preds = %106
  %115 = load i64, i64* %11, align 8
  %116 = mul i64 %115, 4
  %117 = call i64 @MALLOC(i64 %116)
  %118 = inttoptr i64 %117 to %struct.sset*
  %119 = load %struct.dfa*, %struct.dfa** %10, align 8
  %120 = getelementptr inbounds %struct.dfa, %struct.dfa* %119, i32 0, i32 8
  store %struct.sset* %118, %struct.sset** %120, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @WORK, align 8
  %123 = add i64 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %123, %125
  %127 = mul i64 %126, 4
  %128 = call i64 @MALLOC(i64 %127)
  %129 = inttoptr i64 %128 to i32*
  %130 = load %struct.dfa*, %struct.dfa** %10, align 8
  %131 = getelementptr inbounds %struct.dfa, %struct.dfa* %130, i32 0, i32 0
  store i32* %129, i32** %131, align 8
  %132 = load %struct.dfa*, %struct.dfa** %10, align 8
  %133 = getelementptr inbounds %struct.dfa, %struct.dfa* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %135, %137
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load %struct.dfa*, %struct.dfa** %10, align 8
  %141 = getelementptr inbounds %struct.dfa, %struct.dfa* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %144 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = mul i64 %142, %145
  %147 = mul i64 %146, 8
  %148 = call i64 @MALLOC(i64 %147)
  %149 = inttoptr i64 %148 to %struct.sset**
  %150 = load %struct.dfa*, %struct.dfa** %10, align 8
  %151 = getelementptr inbounds %struct.dfa, %struct.dfa* %150, i32 0, i32 16
  store %struct.sset** %149, %struct.sset*** %151, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %154 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = mul i64 %152, %155
  %157 = mul i64 %156, 4
  %158 = call i64 @MALLOC(i64 %157)
  %159 = inttoptr i64 %158 to %struct.arcp*
  %160 = load %struct.dfa*, %struct.dfa** %10, align 8
  %161 = getelementptr inbounds %struct.dfa, %struct.dfa* %160, i32 0, i32 15
  store %struct.arcp* %159, %struct.arcp** %161, align 8
  %162 = load %struct.dfa*, %struct.dfa** %10, align 8
  %163 = getelementptr inbounds %struct.dfa, %struct.dfa* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  %164 = load %struct.dfa*, %struct.dfa** %10, align 8
  %165 = bitcast %struct.dfa* %164 to i8*
  %166 = load %struct.dfa*, %struct.dfa** %10, align 8
  %167 = getelementptr inbounds %struct.dfa, %struct.dfa* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load %struct.dfa*, %struct.dfa** %10, align 8
  %169 = getelementptr inbounds %struct.dfa, %struct.dfa* %168, i32 0, i32 8
  %170 = load %struct.sset*, %struct.sset** %169, align 8
  %171 = icmp eq %struct.sset* %170, null
  br i1 %171, label %187, label %172

172:                                              ; preds = %114
  %173 = load %struct.dfa*, %struct.dfa** %10, align 8
  %174 = getelementptr inbounds %struct.dfa, %struct.dfa* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %187, label %177

177:                                              ; preds = %172
  %178 = load %struct.dfa*, %struct.dfa** %10, align 8
  %179 = getelementptr inbounds %struct.dfa, %struct.dfa* %178, i32 0, i32 16
  %180 = load %struct.sset**, %struct.sset*** %179, align 8
  %181 = icmp eq %struct.sset** %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load %struct.dfa*, %struct.dfa** %10, align 8
  %184 = getelementptr inbounds %struct.dfa, %struct.dfa* %183, i32 0, i32 15
  %185 = load %struct.arcp*, %struct.arcp** %184, align 8
  %186 = icmp eq %struct.arcp* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182, %177, %172, %114
  %188 = load %struct.dfa*, %struct.dfa** %10, align 8
  %189 = call i32 @freedfa(%struct.dfa* %188)
  %190 = load i32, i32* @REG_ESPACE, align 4
  %191 = call i32 @ERR(i32 %190)
  store %struct.dfa* null, %struct.dfa** %5, align 8
  br label %239

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192, %102
  %194 = load %struct.vars*, %struct.vars** %6, align 8
  %195 = getelementptr inbounds %struct.vars, %struct.vars* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @REG_SMALL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %203

201:                                              ; preds = %193
  %202 = load i64, i64* %11, align 8
  br label %203

203:                                              ; preds = %201, %200
  %204 = phi i64 [ 7, %200 ], [ %202, %201 ]
  %205 = trunc i64 %204 to i32
  %206 = load %struct.dfa*, %struct.dfa** %10, align 8
  %207 = getelementptr inbounds %struct.dfa, %struct.dfa* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 8
  %208 = load %struct.dfa*, %struct.dfa** %10, align 8
  %209 = getelementptr inbounds %struct.dfa, %struct.dfa* %208, i32 0, i32 14
  store i64 0, i64* %209, align 8
  %210 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %211 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.dfa*, %struct.dfa** %10, align 8
  %214 = getelementptr inbounds %struct.dfa, %struct.dfa* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 4
  %215 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %216 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.dfa*, %struct.dfa** %10, align 8
  %219 = getelementptr inbounds %struct.dfa, %struct.dfa* %218, i32 0, i32 6
  store i64 %217, i64* %219, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.dfa*, %struct.dfa** %10, align 8
  %222 = getelementptr inbounds %struct.dfa, %struct.dfa* %221, i32 0, i32 7
  store i32 %220, i32* %222, align 8
  %223 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %224 = load %struct.dfa*, %struct.dfa** %10, align 8
  %225 = getelementptr inbounds %struct.dfa, %struct.dfa* %224, i32 0, i32 13
  store %struct.cnfa* %223, %struct.cnfa** %225, align 8
  %226 = load %struct.colormap*, %struct.colormap** %8, align 8
  %227 = load %struct.dfa*, %struct.dfa** %10, align 8
  %228 = getelementptr inbounds %struct.dfa, %struct.dfa* %227, i32 0, i32 12
  store %struct.colormap* %226, %struct.colormap** %228, align 8
  %229 = load %struct.dfa*, %struct.dfa** %10, align 8
  %230 = getelementptr inbounds %struct.dfa, %struct.dfa* %229, i32 0, i32 11
  store i32* null, i32** %230, align 8
  %231 = load %struct.dfa*, %struct.dfa** %10, align 8
  %232 = getelementptr inbounds %struct.dfa, %struct.dfa* %231, i32 0, i32 10
  store i32* null, i32** %232, align 8
  %233 = load %struct.dfa*, %struct.dfa** %10, align 8
  %234 = getelementptr inbounds %struct.dfa, %struct.dfa* %233, i32 0, i32 8
  %235 = load %struct.sset*, %struct.sset** %234, align 8
  %236 = load %struct.dfa*, %struct.dfa** %10, align 8
  %237 = getelementptr inbounds %struct.dfa, %struct.dfa* %236, i32 0, i32 9
  store %struct.sset* %235, %struct.sset** %237, align 8
  %238 = load %struct.dfa*, %struct.dfa** %10, align 8
  store %struct.dfa* %238, %struct.dfa** %5, align 8
  br label %239

239:                                              ; preds = %203, %187, %111, %60
  %240 = load %struct.dfa*, %struct.dfa** %5, align 8
  ret %struct.dfa* %240
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MALLOC(i64) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @freedfa(%struct.dfa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
