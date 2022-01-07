; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_driver.c_mysql_handle_preparer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_driver.c_mysql_handle_preparer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i32*, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"mysql_handle_preparer\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dbh=%p\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sql=%.*s\00", align 1
@mysql_stmt_methods = common dso_local global i32 0, align 4
@PDO_PLACEHOLDER_POSITIONAL = common dso_local global i32 0, align 4
@PDO_ATTR_MAX_COLUMN_LEN = common dso_local global i32 0, align 4
@PDO_PLACEHOLDER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64, %struct.TYPE_9__*, i32*)* @mysql_handle_preparer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_handle_preparer(%struct.TYPE_12__* %0, i8* %1, i64 %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %12, align 8
  %22 = call i8* @ecalloc(i32 1, i32 56)
  %23 = bitcast i8* %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %24 = call i32 @PDO_DBG_ENTER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = call i32 (i8*, ...) @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %25)
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (i8*, ...) @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 7
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i32* @mysql_stmt_methods, i32** %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %5
  br label %176

44:                                               ; preds = %5
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mysql_get_server_version(i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 40100
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %175

52:                                               ; preds = %44
  %53 = load i32, i32* @PDO_PLACEHOLDER_POSITIONAL, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @pdo_parse_params(%struct.TYPE_9__* %56, i8* %57, i64 %58, i8** %14, i64* %15)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i8*, i8** %14, align 8
  store i8* %63, i8** %8, align 8
  %64 = load i64, i64* %15, align 8
  store i64 %64, i64* %9, align 8
  br label %78

65:                                               ; preds = %52
  %66 = load i32, i32* %16, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcpy(i32 %71, i32 %74)
  %76 = call i32 @PDO_DBG_RETURN(i32 0)
  br label %77

77:                                               ; preds = %68, %65
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mysql_stmt_init(i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = icmp ne i32 %82, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %78
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = call i32 @pdo_mysql_error(%struct.TYPE_12__* %87)
  %89 = load i8*, i8** %14, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @efree(i8* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = call i32 @PDO_DBG_RETURN(i32 0)
  br label %96

96:                                               ; preds = %94, %78
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @mysql_stmt_prepare(i32 %99, i8* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %96
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @mysql_errno(i32 %107)
  %109 = icmp eq i32 %108, 1295
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @efree(i8* %114)
  br label %116

116:                                              ; preds = %113, %110
  br label %175

117:                                              ; preds = %104
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = call i32 @pdo_mysql_error(%struct.TYPE_12__* %118)
  %120 = load i8*, i8** %14, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @efree(i8* %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = call i32 @PDO_DBG_RETURN(i32 0)
  br label %127

127:                                              ; preds = %125, %96
  %128 = load i8*, i8** %14, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @efree(i8* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @mysql_stmt_param_count(i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %133
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @ecalloc(i32 %149, i32 4)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 4
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @ecalloc(i32 %156, i32 4)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i8* @ecalloc(i32 %162, i32 4)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %144, %133
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* @PDO_ATTR_MAX_COLUMN_LEN, align 4
  %171 = call i32 @pdo_attr_lval(i32* %169, i32 %170, i32 0)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = call i32 @PDO_DBG_RETURN(i32 1)
  br label %175

175:                                              ; preds = %166, %116, %51
  br label %176

176:                                              ; preds = %175, %43
  %177 = load i32, i32* @PDO_PLACEHOLDER_NONE, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = call i32 @PDO_DBG_RETURN(i32 1)
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @PDO_DBG_ENTER(i8*) #1

declare dso_local i32 @PDO_DBG_INF_FMT(i8*, ...) #1

declare dso_local i32 @mysql_get_server_version(i32) #1

declare dso_local i32 @pdo_parse_params(%struct.TYPE_9__*, i8*, i64, i8**, i64*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @PDO_DBG_RETURN(i32) #1

declare dso_local i32 @mysql_stmt_init(i32) #1

declare dso_local i32 @pdo_mysql_error(%struct.TYPE_12__*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i64 @mysql_stmt_prepare(i32, i8*, i64) #1

declare dso_local i32 @mysql_errno(i32) #1

declare dso_local i32 @mysql_stmt_param_count(i32) #1

declare dso_local i32 @pdo_attr_lval(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
