; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_get_table_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_get_table_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i8**, i32, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"sqlite3_get_table() called with two or more incompatible queries\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @sqlite3_get_table_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3_get_table_cb(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %10, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %11, align 4
  br label %30

28:                                               ; preds = %22, %4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %30
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 2
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8** @sqlite3_realloc64(i8** %51, i32 %57)
  store i8** %58, i8*** %14, align 8
  %59 = load i8**, i8*** %14, align 8
  %60 = icmp eq i8** %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %180

62:                                               ; preds = %40
  %63 = load i8**, i8*** %14, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i8** %63, i8*** %65, align 8
  br label %66

66:                                               ; preds = %62, %30
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %100, %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load i8**, i8*** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %84)
  store i8* %85, i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %180

89:                                               ; preds = %79
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i8**, i8*** %92, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8*, i8** %93, i64 %98
  store i8* %90, i8** %99, align 8
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %75

103:                                              ; preds = %75
  br label %122

104:                                              ; preds = %66
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 6
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @sqlite3_free(i8* %113)
  %115 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @SQLITE_ERROR, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  store i32 1, i32* %5, align 4
  br label %184

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121, %103
  %123 = load i8**, i8*** %8, align 8
  %124 = icmp ne i8** %123, null
  br i1 %124, label %125, label %179

125:                                              ; preds = %122
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %171, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %174

130:                                              ; preds = %126
  %131 = load i8**, i8*** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i8* null, i8** %13, align 8
  br label %160

138:                                              ; preds = %130
  %139 = load i8**, i8*** %8, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @sqlite3Strlen30(i8* %143)
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i8* @sqlite3_malloc64(i32 %146)
  store i8* %147, i8** %13, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %180

151:                                              ; preds = %138
  %152 = load i8*, i8** %13, align 8
  %153 = load i8**, i8*** %8, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @memcpy(i8* %152, i8* %157, i32 %158)
  br label %160

160:                                              ; preds = %151, %137
  %161 = load i8*, i8** %13, align 8
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 3
  %164 = load i8**, i8*** %163, align 8
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8*, i8** %164, i64 %169
  store i8* %161, i8** %170, align 8
  br label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %126

174:                                              ; preds = %126
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %174, %122
  store i32 0, i32* %5, align 4
  br label %184

180:                                              ; preds = %150, %88, %61
  %181 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  store i32 1, i32* %5, align 4
  br label %184

184:                                              ; preds = %180, %179, %110
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i8** @sqlite3_realloc64(i8**, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
