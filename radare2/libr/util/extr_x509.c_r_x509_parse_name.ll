; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_x509.c_r_x509_parse_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_x509.c_r_x509_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32**, i32** }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__** }

@CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@TAG_SEQUENCE = common dso_local global i64 0, align 8
@TAG_SET = common dso_local global i64 0, align 8
@FORM_CONSTRUCTED = common dso_local global i64 0, align 8
@TAG_OID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_x509_parse_name(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %11, %2
  store i32 0, i32* %3, align 4
  br label %223

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CLASS_UNIVERSAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %222

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TAG_SEQUENCE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %222

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @calloc(i64 %42, i32 8)
  %44 = inttoptr i64 %43 to i32**
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32** %44, i32*** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %33
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %223

54:                                               ; preds = %33
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @calloc(i64 %57, i32 8)
  %59 = inttoptr i64 %58 to i32**
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32** %59, i32*** %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32**, i32*** %63, align 8
  %65 = icmp ne i32** %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = call i32 @R_FREE(i32** %71)
  store i32 0, i32* %3, align 4
  br label %223

73:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %218, %73
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %75, %79
  br i1 %80, label %81, label %221

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %85, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %7, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %217

91:                                               ; preds = %81
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CLASS_UNIVERSAL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %217

97:                                               ; preds = %91
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TAG_SET, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %217

103:                                              ; preds = %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FORM_CONSTRUCTED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %217

109:                                              ; preds = %103
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 1
  br i1 %114, label %115, label %217

115:                                              ; preds = %109
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %119, i64 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %7, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = icmp ne %struct.TYPE_8__* %122, null
  br i1 %123, label %124, label %216

124:                                              ; preds = %115
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ugt i64 %128, 1
  br i1 %129, label %130, label %216

130:                                              ; preds = %124
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CLASS_UNIVERSAL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %216

136:                                              ; preds = %130
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TAG_SEQUENCE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %216

142:                                              ; preds = %136
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %146, i64 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CLASS_UNIVERSAL, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %187

153:                                              ; preds = %142
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %157, i64 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TAG_OID, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %153
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %168, i64 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %176, i64 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32* @r_asn1_stringify_oid(i32 %172, i32 %180)
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32**, i32*** %183, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds i32*, i32** %184, i64 %185
  store i32* %181, i32** %186, align 8
  br label %187

187:                                              ; preds = %164, %153, %142
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %191, i64 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  store %struct.TYPE_8__* %193, %struct.TYPE_8__** %8, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %195 = icmp ne %struct.TYPE_8__* %194, null
  br i1 %195, label %196, label %215

196:                                              ; preds = %187
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CLASS_UNIVERSAL, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %196
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32* @r_asn1_stringify_string(i32 %205, i32 %208)
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32**, i32*** %211, align 8
  %213 = load i64, i64* %6, align 8
  %214 = getelementptr inbounds i32*, i32** %212, i64 %213
  store i32* %209, i32** %214, align 8
  br label %215

215:                                              ; preds = %202, %196, %187
  br label %216

216:                                              ; preds = %215, %136, %130, %124, %115
  br label %217

217:                                              ; preds = %216, %109, %103, %97, %91, %81
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %6, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %6, align 8
  br label %74

221:                                              ; preds = %74
  br label %222

222:                                              ; preds = %221, %27, %21
  store i32 1, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %66, %51, %20
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @R_FREE(i32**) #1

declare dso_local i32* @r_asn1_stringify_oid(i32, i32) #1

declare dso_local i32* @r_asn1_stringify_string(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
