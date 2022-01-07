; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_get_col.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_get_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i64, i64 }

@SQL_C_BINARY = common dso_local global i32 0, align 4
@SQL_C_CHAR = common dso_local global i32 0, align 4
@SQL_SUCCESS = common dso_local global i64 0, align 8
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@SQL_NULL_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8**, i32*, i32*)* @odbc_stmt_get_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odbc_stmt_get_col(%struct.TYPE_6__* %0, i32 %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %13, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %151

33:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @SQL_C_BINARY, align 4
  br label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @SQL_C_CHAR, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = call i64 @SQLGetData(i32 %36, i32 %38, i32 %48, i8* %51, i32 256, i32* %53)
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* @SQL_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %152

59:                                               ; preds = %47
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %148

63:                                               ; preds = %59
  %64 = call i8* @emalloc(i32 256)
  store i8* %64, i8** %18, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @estrndup(i8* %67, i32 256)
  store i8* %68, i8** %16, align 8
  store i32 255, i32* %15, align 4
  br label %69

69:                                               ; preds = %129, %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @SQL_C_CHAR, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = call i64 @SQLGetData(i32 %74, i32 %76, i32 %77, i8* %78, i32 256, i32* %80)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %69
  %86 = load i8*, i8** %16, align 8
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 255
  %89 = add nsw i32 %88, 1
  %90 = call i8* @erealloc(i8* %86, i32 %89)
  store i8* %90, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8*, i8** %18, align 8
  %96 = call i32 @memcpy(i8* %94, i8* %95, i32 255)
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 255
  store i32 %98, i32* %15, align 4
  br label %128

99:                                               ; preds = %69
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* @SQL_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %105, %108
  %110 = add nsw i32 %109, 1
  %111 = call i8* @erealloc(i8* %104, i32 %110)
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8*, i8** %18, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memcpy(i8* %115, i8* %116, i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %15, align 4
  br label %127

126:                                              ; preds = %99
  br label %130

127:                                              ; preds = %103
  br label %128

128:                                              ; preds = %127, %85
  br label %129

129:                                              ; preds = %128
  br i1 true, label %69, label %130

130:                                              ; preds = %129, %126
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @efree(i8* %131)
  %133 = load i8*, i8** %16, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %16, align 8
  %138 = load i8**, i8*** %9, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i32*, i32** %11, align 8
  store i32 1, i32* %139, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32*, i32** %10, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  br label %185

147:                                              ; preds = %130
  store i32 1, i32* %6, align 4
  br label %221

148:                                              ; preds = %59
  %149 = load i8**, i8*** %9, align 8
  store i8* null, i8** %149, align 8
  %150 = load i32*, i32** %10, align 8
  store i32 0, i32* %150, align 4
  store i32 1, i32* %6, align 4
  br label %221

151:                                              ; preds = %5
  br label %152

152:                                              ; preds = %151, %58
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @SQL_NULL_DATA, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load i8**, i8*** %9, align 8
  store i8* null, i8** %160, align 8
  %161 = load i32*, i32** %10, align 8
  store i32 0, i32* %161, align 4
  store i32 1, i32* %6, align 4
  br label %221

162:                                              ; preds = %152
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8**, i8*** %9, align 8
  store i8* %170, i8** %171, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32*, i32** %10, align 8
  store i32 %174, i32* %175, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %167
  br label %185

181:                                              ; preds = %167
  store i32 1, i32* %6, align 4
  br label %221

182:                                              ; preds = %162
  %183 = load i8**, i8*** %9, align 8
  store i8* null, i8** %183, align 8
  %184 = load i32*, i32** %10, align 8
  store i32 0, i32* %184, align 4
  store i32 1, i32* %6, align 4
  br label %221

185:                                              ; preds = %180, %146
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i8**, i8*** %9, align 8
  %191 = load i8*, i8** %190, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @pdo_odbc_ucs22utf8(%struct.TYPE_6__* %186, i64 %189, i8* %191, i32 %193, i32* %14)
  switch i32 %194, label %220 [
    i32 130, label %195
    i32 129, label %195
    i32 128, label %196
  ]

195:                                              ; preds = %185, %185
  store i32 1, i32* %6, align 4
  br label %221

196:                                              ; preds = %185
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load i8**, i8*** %9, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @efree(i8* %202)
  br label %204

204:                                              ; preds = %200, %196
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  %207 = call i8* @emalloc(i32 %206)
  %208 = load i8**, i8*** %9, align 8
  store i8* %207, i8** %208, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32*, i32** %10, align 8
  store i32 %209, i32* %210, align 4
  %211 = load i8**, i8*** %9, align 8
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 1
  %218 = call i32 @memcpy(i8* %212, i8* %215, i32 %217)
  %219 = load i32*, i32** %11, align 8
  store i32 1, i32* %219, align 4
  store i32 1, i32* %6, align 4
  br label %221

220:                                              ; preds = %185
  store i32 1, i32* %6, align 4
  br label %221

221:                                              ; preds = %220, %204, %195, %182, %181, %159, %148, %147
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i64 @SQLGetData(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i8* @erealloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @pdo_odbc_ucs22utf8(%struct.TYPE_6__*, i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
