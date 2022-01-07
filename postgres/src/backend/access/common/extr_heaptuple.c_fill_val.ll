; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_fill_val.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_fill_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32, i64 }

@HIGHBIT = common dso_local global i32 0, align 4
@HEAP_HASNULL = common dso_local global i32 0, align 4
@HEAP_HASVARWIDTH = common dso_local global i32 0, align 4
@HEAP_HASEXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32**, i32*, i8**, i32*, i32, i32)* @fill_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_val(%struct.TYPE_4__* %0, i32** %1, i32* %2, i8** %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i8**, i8*** %11, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %16, align 8
  %21 = load i32**, i32*** %9, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %7
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HIGHBIT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %39

32:                                               ; preds = %23
  %33 = load i32**, i32*** %9, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32* %35, i32** %33, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = load i32*, i32** %36, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %28
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @HEAP_HASNULL, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %225

47:                                               ; preds = %39
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32**, i32*** %9, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %7
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = call i64 @att_align_nominal(i8* %60, i8 signext %63)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %16, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @store_att_byval(i8* %66, i32 %67, i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %15, align 4
  br label %218

75:                                               ; preds = %54
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %169

80:                                               ; preds = %75
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @DatumGetPointer(i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* @HEAP_HASVARWIDTH, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i64 @VARATT_IS_EXTERNAL(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %80
  %91 = load i32, i32* %17, align 4
  %92 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = call i32* @DatumGetEOHP(i32 %95)
  store i32* %96, i32** %18, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8, i8* %99, align 8
  %101 = call i64 @att_align_nominal(i8* %97, i8 signext %100)
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %16, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = call i32 @EOH_get_flat_size(i32* %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32*, i32** %18, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @EOH_flatten_into(i32* %105, i8* %106, i32 %107)
  br label %120

109:                                              ; preds = %90
  %110 = load i32, i32* @HEAP_HASEXTERNAL, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @VARSIZE_EXTERNAL(i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i8*, i8** %16, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @memcpy(i8* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %109, %94
  br label %168

121:                                              ; preds = %80
  %122 = load i32, i32* %17, align 4
  %123 = call i64 @VARATT_IS_SHORT(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @VARSIZE_SHORT(i32 %126)
  store i32 %127, i32* %15, align 4
  %128 = load i8*, i8** %16, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @memcpy(i8* %128, i32 %129, i32 %130)
  br label %167

132:                                              ; preds = %121
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = call i64 @VARLENA_ATT_IS_PACKABLE(%struct.TYPE_4__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load i32, i32* %17, align 4
  %138 = call i64 @VARATT_CAN_MAKE_SHORT(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @VARATT_CONVERTED_SHORT_SIZE(i32 %141)
  store i32 %142, i32* %15, align 4
  %143 = load i8*, i8** %16, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @SET_VARSIZE_SHORT(i8* %143, i32 %144)
  %146 = load i8*, i8** %16, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @VARDATA(i32 %148)
  %150 = load i32, i32* %15, align 4
  %151 = sub nsw i32 %150, 1
  %152 = call i32 @memcpy(i8* %147, i32 %149, i32 %151)
  br label %166

153:                                              ; preds = %136, %132
  %154 = load i8*, i8** %16, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i8, i8* %156, align 8
  %158 = call i64 @att_align_nominal(i8* %154, i8 signext %157)
  %159 = inttoptr i64 %158 to i8*
  store i8* %159, i8** %16, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @VARSIZE(i32 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i8*, i8** %16, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @memcpy(i8* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %153, %140
  br label %167

167:                                              ; preds = %166, %125
  br label %168

168:                                              ; preds = %167, %120
  br label %217

169:                                              ; preds = %75
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, -2
  br i1 %173, label %174, label %195

174:                                              ; preds = %169
  %175 = load i32, i32* @HEAP_HASVARWIDTH, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i8, i8* %180, align 8
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 99
  %184 = zext i1 %183 to i32
  %185 = call i32 @Assert(i32 %184)
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @DatumGetCString(i32 %186)
  %188 = call i32 @strlen(i32 %187)
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  %190 = load i8*, i8** %16, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @DatumGetPointer(i32 %191)
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @memcpy(i8* %190, i32 %192, i32 %193)
  br label %216

195:                                              ; preds = %169
  %196 = load i8*, i8** %16, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i8, i8* %198, align 8
  %200 = call i64 @att_align_nominal(i8* %196, i8 signext %199)
  %201 = inttoptr i64 %200 to i8*
  store i8* %201, i8** %16, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp sgt i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @Assert(i32 %206)
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %15, align 4
  %211 = load i8*, i8** %16, align 8
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @DatumGetPointer(i32 %212)
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @memcpy(i8* %211, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %195, %174
  br label %217

217:                                              ; preds = %216, %168
  br label %218

218:                                              ; preds = %217, %59
  %219 = load i32, i32* %15, align 4
  %220 = load i8*, i8** %16, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %16, align 8
  %223 = load i8*, i8** %16, align 8
  %224 = load i8**, i8*** %11, align 8
  store i8* %223, i8** %224, align 8
  br label %225

225:                                              ; preds = %218, %42
  ret void
}

declare dso_local i64 @att_align_nominal(i8*, i8 signext) #1

declare dso_local i32 @store_att_byval(i8*, i32, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32* @DatumGetEOHP(i32) #1

declare dso_local i32 @EOH_get_flat_size(i32*) #1

declare dso_local i32 @EOH_flatten_into(i32*, i8*, i32) #1

declare dso_local i32 @VARSIZE_EXTERNAL(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @VARATT_IS_SHORT(i32) #1

declare dso_local i32 @VARSIZE_SHORT(i32) #1

declare dso_local i64 @VARLENA_ATT_IS_PACKABLE(%struct.TYPE_4__*) #1

declare dso_local i64 @VARATT_CAN_MAKE_SHORT(i32) #1

declare dso_local i32 @VARATT_CONVERTED_SHORT_SIZE(i32) #1

declare dso_local i32 @SET_VARSIZE_SHORT(i8*, i32) #1

declare dso_local i32 @VARDATA(i32) #1

declare dso_local i32 @VARSIZE(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
