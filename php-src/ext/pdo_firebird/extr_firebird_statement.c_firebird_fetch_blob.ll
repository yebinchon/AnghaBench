; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_statement.c_firebird_fetch_blob.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_statement.c_firebird_fetch_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i8**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i8*, i32, i32 }

@PDO_FIREBIRD_HANDLE_INITIALIZER = common dso_local global i32 0, align 4
@isc_info_blob_total_length = common dso_local global i8 0, align 1
@isc_info_end = common dso_local global i8 0, align 1
@isc_info_truncated = common dso_local global i8 0, align 1
@isc_info_error = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"Couldn't determine BLOB size\00", align 1
@isc_segment = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i64 0, align 8
@isc_segstr_eof = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Error reading from BLOB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8**, i64*, i32*)* @firebird_fetch_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_fetch_blob(%struct.TYPE_6__* %0, i32 %1, i8** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca [20 x i8], align 16
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i8, align 1
  %21 = alloca i64, align 8
  %22 = alloca i16, align 2
  %23 = alloca i64, align 8
  %24 = alloca i16, align 2
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %13, align 8
  %32 = load i32, i32* @PDO_FIREBIRD_HANDLE_INITIALIZER, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i8, i8* @isc_info_blob_total_length, align 1
  store i8 %33, i8* %15, align 1
  %34 = load i64*, i64** %10, align 8
  store i64 0, i64* %34, align 8
  store i32 0, i32* %18, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @isc_open_blob(i32* %37, i32* %39, i32* %41, i32* %14, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = call i32 @RECORD_ERROR(%struct.TYPE_6__* %46)
  store i32 0, i32* %6, align 4
  br label %232

48:                                               ; preds = %5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @const_cast(i8* %15)
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %54 = call i64 @isc_blob_info(i32* %51, i32* %14, i32 1, i32 %52, i32 20, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = call i32 @RECORD_ERROR(%struct.TYPE_6__* %57)
  br label %221

59:                                               ; preds = %48
  store i16 0, i16* %17, align 2
  br label %60

60:                                               ; preds = %114, %59
  %61 = load i16, i16* %17, align 2
  %62 = zext i16 %61 to i64
  %63 = icmp ult i64 %62, 20
  br i1 %63, label %64, label %122

64:                                               ; preds = %60
  %65 = load i16, i16* %17, align 2
  %66 = add i16 %65, 1
  store i16 %66, i16* %17, align 2
  %67 = zext i16 %65 to i64
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %20, align 1
  %70 = load i8, i8* %20, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @isc_info_end, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %91, label %75

75:                                               ; preds = %64
  %76 = load i8, i8* %20, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @isc_info_truncated, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %75
  %82 = load i8, i8* %20, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8, i8* @isc_info_error, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load i16, i16* %17, align 2
  %89 = zext i16 %88 to i64
  %90 = icmp uge i64 %89, 20
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %81, %75, %64
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %93, align 8
  br label %221

94:                                               ; preds = %87
  %95 = load i16, i16* %17, align 2
  %96 = zext i16 %95 to i64
  %97 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %96
  %98 = call i64 @isc_vax_integer(i8* %97, i16 zeroext 2)
  %99 = trunc i64 %98 to i16
  store i16 %99, i16* %19, align 2
  %100 = load i8, i8* %20, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @isc_info_blob_total_length, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %94
  %106 = load i16, i16* %17, align 2
  %107 = zext i16 %106 to i32
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %109
  %111 = load i16, i16* %19, align 2
  %112 = call i64 @isc_vax_integer(i8* %110, i16 zeroext %111)
  %113 = load i64*, i64** %10, align 8
  store i64 %112, i64* %113, align 8
  br label %122

114:                                              ; preds = %94
  %115 = load i16, i16* %19, align 2
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %116, 2
  %118 = load i16, i16* %17, align 2
  %119 = zext i16 %118 to i32
  %120 = add nsw i32 %119, %117
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %17, align 2
  br label %60

122:                                              ; preds = %105, %60
  %123 = load i64*, i64** %10, align 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %220

126:                                              ; preds = %122
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i64*, i64** %10, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  %137 = call i8* @erealloc(i8* %133, i64 %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* %137, i8** %143, align 8
  %144 = load i8**, i8*** %9, align 8
  store i8* %137, i8** %144, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %21, align 8
  br label %145

145:                                              ; preds = %187, %126
  %146 = load i64, i64* %23, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i64, i64* %23, align 8
  %150 = load i64, i64* @isc_segment, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148, %145
  %153 = load i64, i64* %21, align 8
  %154 = load i64*, i64** %10, align 8
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %153, %155
  br label %157

157:                                              ; preds = %152, %148
  %158 = phi i1 [ false, %148 ], [ %156, %152 ]
  br i1 %158, label %159, label %192

159:                                              ; preds = %157
  %160 = load i64*, i64** %10, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %21, align 8
  %163 = sub nsw i64 %161, %162
  %164 = load i64, i64* @USHRT_MAX, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i64, i64* @USHRT_MAX, align 8
  br label %175

168:                                              ; preds = %159
  %169 = load i64*, i64** %10, align 8
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %21, align 8
  %172 = sub nsw i64 %170, %171
  %173 = trunc i64 %172 to i16
  %174 = zext i16 %173 to i64
  br label %175

175:                                              ; preds = %168, %166
  %176 = phi i64 [ %167, %166 ], [ %174, %168 ]
  %177 = trunc i64 %176 to i16
  store i16 %177, i16* %24, align 2
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i16, i16* %24, align 2
  %182 = load i8**, i8*** %9, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = load i64, i64* %21, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = call i64 @isc_get_segment(i32* %180, i32* %14, i16* %22, i16 zeroext %181, i8* %185)
  store i64 %186, i64* %23, align 8
  br label %187

187:                                              ; preds = %175
  %188 = load i16, i16* %22, align 2
  %189 = zext i16 %188 to i64
  %190 = load i64, i64* %21, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %21, align 8
  br label %145

192:                                              ; preds = %157
  %193 = load i8**, i8*** %9, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = load i64*, i64** %10, align 8
  %196 = getelementptr inbounds i64, i64* %195, i32 1
  store i64* %196, i64** %10, align 8
  %197 = load i64, i64* %195, align 8
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  store i8 0, i8* %198, align 1
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %219

205:                                              ; preds = %192
  %206 = load i64, i64* %23, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %205
  %209 = load i64, i64* %23, align 8
  %210 = load i64, i64* @isc_segstr_eof, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load i64, i64* %23, align 8
  %214 = load i64, i64* @isc_segment, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %218, align 8
  br label %221

219:                                              ; preds = %212, %208, %205, %192
  br label %220

220:                                              ; preds = %219, %122
  store i32 1, i32* %18, align 4
  br label %221

221:                                              ; preds = %220, %216, %91, %56
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = call i64 @isc_close_blob(i32* %224, i32* %14)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %229 = call i32 @RECORD_ERROR(%struct.TYPE_6__* %228)
  store i32 0, i32* %6, align 4
  br label %232

230:                                              ; preds = %221
  %231 = load i32, i32* %18, align 4
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %230, %227, %45
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i64 @isc_open_blob(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RECORD_ERROR(%struct.TYPE_6__*) #1

declare dso_local i64 @isc_blob_info(i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @const_cast(i8*) #1

declare dso_local i64 @isc_vax_integer(i8*, i16 zeroext) #1

declare dso_local i8* @erealloc(i8*, i64) #1

declare dso_local i64 @isc_get_segment(i32*, i32*, i16*, i16 zeroext, i8*) #1

declare dso_local i64 @isc_close_blob(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
