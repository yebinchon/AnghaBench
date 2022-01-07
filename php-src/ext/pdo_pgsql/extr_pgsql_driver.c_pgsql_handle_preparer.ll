; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pgsql_handle_preparer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pgsql_handle_preparer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }

@pgsql_stmt_methods = common dso_local global i32 0, align 4
@PDO_ATTR_CURSOR = common dso_local global i32 0, align 4
@PDO_CURSOR_FWDONLY = common dso_local global i32 0, align 4
@PDO_CURSOR_SCROLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pdo_crsr_%08x\00", align 1
@PDO_ATTR_EMULATE_PREPARES = common dso_local global i32 0, align 4
@PDO_PGSQL_ATTR_DISABLE_PREPARES = common dso_local global i32 0, align 4
@PDO_PLACEHOLDER_NONE = common dso_local global i32 0, align 4
@PDO_PLACEHOLDER_NAMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"pdo_stmt_%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64, %struct.TYPE_9__*, i32*)* @pgsql_handle_preparer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_handle_preparer(%struct.TYPE_12__* %0, i8* %1, i64 %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %12, align 8
  %24 = call %struct.TYPE_10__* @ecalloc(i32 1, i32 32)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %13, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32* @pgsql_stmt_methods, i32** %32, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* @PDO_ATTR_CURSOR, align 4
  %35 = load i32, i32* @PDO_CURSOR_FWDONLY, align 4
  %36 = call i32 @pdo_attr_lval(i32* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @PDO_CURSOR_SCROLL, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %5
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @efree(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = call i32 @spprintf(i64* %54, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 1, i32* %18, align 4
  br label %99

60:                                               ; preds = %5
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* @PDO_ATTR_EMULATE_PREPARES, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @pdo_attr_lval(i32* %64, i32 %65, i32 %68)
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %18, align 4
  br label %72

72:                                               ; preds = %71, %63
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @PDO_PGSQL_ATTR_DISABLE_PREPARES, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pdo_attr_lval(i32* %73, i32 %74, i32 %77)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %19, align 4
  br label %81

81:                                               ; preds = %80, %72
  br label %98

82:                                               ; preds = %60
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %87, %82
  %93 = phi i1 [ true, %82 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %18, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %92, %81
  br label %99

99:                                               ; preds = %98, %52
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PQprotocolVersion(i32 %105)
  %107 = icmp sle i32 %106, 2
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 1, i32* %18, align 4
  br label %109

109:                                              ; preds = %108, %102, %99
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* @PDO_PLACEHOLDER_NONE, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %122

116:                                              ; preds = %109
  %117 = load i32, i32* @PDO_PLACEHOLDER_NAMED, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %121, align 8
  br label %122

122:                                              ; preds = %116, %112
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @pdo_parse_params(%struct.TYPE_9__* %123, i8* %124, i64 %125, i8** %16, i64* %17)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @strcpy(i32 %132, i32 %135)
  store i32 0, i32* %6, align 4
  br label %165

137:                                              ; preds = %122
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i8*, i8** %16, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %149

144:                                              ; preds = %137
  %145 = load i8*, i8** %8, align 8
  %146 = call i8* @estrdup(i8* %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %144, %140
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = call i32 @spprintf(i64* %158, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %156, %153, %150
  store i32 1, i32* %6, align 4
  br label %165

165:                                              ; preds = %164, %129
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_10__* @ecalloc(i32, i32) #1

declare dso_local i32 @pdo_attr_lval(i32*, i32, i32) #1

declare dso_local i32 @efree(i64) #1

declare dso_local i32 @spprintf(i64*, i32, i8*, i32) #1

declare dso_local i32 @PQprotocolVersion(i32) #1

declare dso_local i32 @pdo_parse_params(%struct.TYPE_9__*, i8*, i64, i8**, i64*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
