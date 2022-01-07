; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_substrFunc.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_substrFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@SQLITE_NULL = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @substrFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @substrFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 2
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i1 [ true, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @sqlite3_value_type(i32* %25)
  %27 = load i32, i32* @SQLITE_NULL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @sqlite3_value_type(i32* %35)
  %37 = load i32, i32* @SQLITE_NULL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %19
  br label %248

40:                                               ; preds = %32, %29
  %41 = load i32**, i32*** %6, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @sqlite3_value_type(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32**, i32*** %6, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @sqlite3_value_int(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SQLITE_BLOB, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %40
  %53 = load i32**, i32*** %6, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @sqlite3_value_bytes(i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32**, i32*** %6, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i8* @sqlite3_value_blob(i32* %59)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %248

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  %66 = load i32**, i32*** %6, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @sqlite3_value_bytes(i32* %68)
  %70 = icmp eq i32 %65, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  br label %98

73:                                               ; preds = %40
  %74 = load i32**, i32*** %6, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i8* @sqlite3_value_text(i32* %76)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %248

81:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %93, %84
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @SQLITE_SKIP_UTF8(i8* %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %86

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %81
  br label %98

98:                                               ; preds = %97, %64
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i32**, i32*** %6, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @sqlite3_value_int(i32* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %108, %101
  br label %120

112:                                              ; preds = %98
  %113 = load i32*, i32** %4, align 8
  %114 = call %struct.TYPE_2__* @sqlite3_context_db_handle(i32* %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %112, %111
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %135, %129
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %123
  br label %152

138:                                              ; preds = %120
  %139 = load i32, i32* %11, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %11, align 4
  br label %151

144:                                              ; preds = %138
  %145 = load i32, i32* %12, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %141
  br label %152

152:                                              ; preds = %151, %137
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %161, %155
  br label %166

166:                                              ; preds = %165, %152
  %167 = load i32, i32* %11, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %12, align 4
  %171 = icmp sge i32 %170, 0
  br label %172

172:                                              ; preds = %169, %166
  %173 = phi i1 [ false, %166 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @SQLITE_BLOB, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %225

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %190, %179
  %181 = load i8*, i8** %7, align 8
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %185, %180
  %189 = phi i1 [ false, %180 ], [ %187, %185 ]
  br i1 %189, label %190, label %195

190:                                              ; preds = %188
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @SQLITE_SKIP_UTF8(i8* %191)
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %11, align 4
  br label %180

195:                                              ; preds = %188
  %196 = load i8*, i8** %7, align 8
  store i8* %196, i8** %8, align 8
  br label %197

197:                                              ; preds = %210, %195
  %198 = load i8*, i8** %8, align 8
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %202, %197
  %206 = phi i1 [ false, %197 ], [ %204, %202 ]
  br i1 %206, label %207, label %213

207:                                              ; preds = %205
  %208 = load i8*, i8** %8, align 8
  %209 = call i32 @SQLITE_SKIP_UTF8(i8* %208)
  br label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %12, align 4
  br label %197

213:                                              ; preds = %205
  %214 = load i32*, i32** %4, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = ptrtoint i8* %216 to i64
  %219 = ptrtoint i8* %217 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  %222 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %223 = load i32, i32* @SQLITE_UTF8, align 4
  %224 = call i32 @sqlite3_result_text64(i32* %214, i8* %215, i32 %221, i32 %222, i32 %223)
  br label %248

225:                                              ; preds = %172
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %9, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %225
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %11, align 4
  %234 = sub nsw i32 %232, %233
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  store i32 0, i32* %12, align 4
  br label %238

238:                                              ; preds = %237, %231
  br label %239

239:                                              ; preds = %238, %225
  %240 = load i32*, i32** %4, align 8
  %241 = load i8*, i8** %7, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %247 = call i32 @sqlite3_result_blob64(i32* %240, i8* %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %39, %63, %80, %239, %213
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @SQLITE_SKIP_UTF8(i8*) #1

declare dso_local %struct.TYPE_2__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @sqlite3_result_text64(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_result_blob64(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
