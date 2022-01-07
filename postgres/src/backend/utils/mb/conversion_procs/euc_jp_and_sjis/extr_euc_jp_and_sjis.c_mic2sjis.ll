; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_mic2sjis.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_mic2sjis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@PG_MULE_INTERNAL = common dso_local global i32 0, align 4
@LC_JISX0201K = common dso_local global i32 0, align 4
@LC_JISX0208 = common dso_local global i32 0, align 4
@LC_JISX0212 = common dso_local global i32 0, align 4
@ibmkanji = common dso_local global %struct.TYPE_2__* null, align 8
@PGSJISALTCODE = common dso_local global i32 0, align 4
@PG_SJIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @mic2sjis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic2sjis(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %13

13:                                               ; preds = %233, %31, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %241

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IS_HIGHBIT_SET(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @report_invalid_encoding(i32 %27, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %7, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %16
  %41 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pg_encoding_verifymb(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @report_invalid_encoding(i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @LC_JISX0201K, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 %59, i8* %60, align 1
  br label %233

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @LC_JISX0208, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %126

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 255
  %79 = or i32 %76, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sge i32 %80, 62881
  br i1 %81, label %82, label %97

82:                                               ; preds = %66
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 84
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, 161
  %87 = ashr i32 %86, 1
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 223
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 129, i32 193
  %92 = add nsw i32 %87, %91
  %93 = add nsw i32 %92, 111
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  store i8 %94, i8* %95, align 1
  br label %109

97:                                               ; preds = %66
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %98, 161
  %100 = ashr i32 %99, 1
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 223
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 129, i32 193
  %105 = add nsw i32 %100, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  store i8 %106, i8* %107, align 1
  br label %109

109:                                              ; preds = %97, %82
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 224
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 97, i32 96
  br label %120

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %114
  %121 = phi i32 [ %118, %114 ], [ 2, %119 ]
  %122 = sub nsw i32 %110, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %5, align 8
  store i8 %123, i8* %124, align 1
  br label %232

126:                                              ; preds = %62
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @LC_JISX0212, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %225

130:                                              ; preds = %126
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = shl i32 %139, 8
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp sge i32 %143, 62881
  br i1 %144, label %145, label %176

145:                                              ; preds = %130
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %146, 84
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = sub nsw i32 %148, 161
  %150 = ashr i32 %149, 1
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 223
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 129, i32 193
  %155 = add nsw i32 %150, %154
  %156 = add nsw i32 %155, 116
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %5, align 8
  store i8 %157, i8* %158, align 1
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %145
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 224
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 97, i32 96
  br label %170

169:                                              ; preds = %145
  br label %170

170:                                              ; preds = %169, %164
  %171 = phi i32 [ %168, %164 ], [ 2, %169 ]
  %172 = sub nsw i32 %160, %171
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %5, align 8
  store i8 %173, i8* %174, align 1
  br label %224

176:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  br label %177

177:                                              ; preds = %220, %176
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 65535
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp eq i32 %185, 65535
  br i1 %186, label %187, label %198

187:                                              ; preds = %177
  %188 = load i32, i32* @PGSJISALTCODE, align 4
  %189 = ashr i32 %188, 8
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %5, align 8
  store i8 %190, i8* %191, align 1
  %193 = load i32, i32* @PGSJISALTCODE, align 4
  %194 = and i32 %193, 255
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %5, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %5, align 8
  store i8 %195, i8* %196, align 1
  br label %223

198:                                              ; preds = %177
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %198
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = ashr i32 %209, 8
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %5, align 8
  store i8 %211, i8* %212, align 1
  %214 = load i32, i32* %9, align 4
  %215 = and i32 %214, 255
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %5, align 8
  store i8 %216, i8* %217, align 1
  br label %223

219:                                              ; preds = %198
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %177

223:                                              ; preds = %202, %187
  br label %224

224:                                              ; preds = %223, %170
  br label %231

225:                                              ; preds = %126
  %226 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %227 = load i32, i32* @PG_SJIS, align 4
  %228 = load i8*, i8** %4, align 8
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @report_untranslatable_char(i32 %226, i32 %227, i8* %228, i32 %229)
  br label %231

231:                                              ; preds = %225, %224
  br label %232

232:                                              ; preds = %231, %120
  br label %233

233:                                              ; preds = %232, %56
  %234 = load i32, i32* %10, align 4
  %235 = load i8*, i8** %4, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %4, align 8
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %6, align 4
  %240 = sub nsw i32 %239, %238
  store i32 %240, i32* %6, align 4
  br label %13

241:                                              ; preds = %13
  %242 = load i8*, i8** %5, align 8
  store i8 0, i8* %242, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
