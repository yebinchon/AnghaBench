; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_get_table.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32, i32, i8** }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i8* null, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@sqlite3_get_table_cb = common dso_local global i32 0, align 4
@SQLITE_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_get_table(%struct.TYPE_7__* %0, i8* %1, i8*** %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8*** %2, i8**** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i8***, i8**** %10, align 8
  store i8** null, i8*** %17, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32*, i32** %12, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8**, i8*** %13, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8**, i8*** %13, align 8
  store i8* null, i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  store i32 20, i32* %37, align 4
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8** @sqlite3_malloc64(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  store i8** %45, i8*** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %48 = load i8**, i8*** %47, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %32
  %51 = load i8*, i8** @SQLITE_NOMEM, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %55, i32* %7, align 4
  br label %169

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  store i8* null, i8** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @sqlite3_get_table_cb, align 4
  %63 = load i8**, i8*** %13, align 8
  %64 = call i32 @sqlite3_exec(%struct.TYPE_7__* %60, i8* %61, i32 %62, %struct.TYPE_8__* %15, i8** %63)
  store i32 %64, i32* %14, align 4
  %65 = call i32 @assert(i32 1)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @SQLITE_INT_TO_PTR(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* @SQLITE_ABORT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %56
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = call i32 @sqlite3_free_table(i8** %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load i8**, i8*** %13, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i8**, i8*** %13, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @sqlite3_free(i8* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %92)
  %94 = load i8**, i8*** %13, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %84
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @sqlite3_free(i8* %97)
  br label %99

99:                                               ; preds = %95, %76
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %7, align 4
  br label %169

106:                                              ; preds = %56
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @sqlite3_free(i8* %108)
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @SQLITE_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = call i32 @sqlite3_free_table(i8** %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %7, align 4
  br label %169

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %121, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = mul i64 8, %130
  %132 = trunc i64 %131 to i32
  %133 = call i8** @sqlite3_realloc64(i8** %127, i32 %132)
  store i8** %133, i8*** %16, align 8
  %134 = load i8**, i8*** %16, align 8
  %135 = icmp eq i8** %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = call i32 @sqlite3_free_table(i8** %139)
  %141 = load i8*, i8** @SQLITE_NOMEM, align 8
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %145, i32* %7, align 4
  br label %169

146:                                              ; preds = %125
  %147 = load i8**, i8*** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  store i8** %147, i8*** %148, align 8
  br label %149

149:                                              ; preds = %146, %119
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  %153 = load i8***, i8**** %10, align 8
  store i8** %152, i8*** %153, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %12, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %149
  %161 = load i32*, i32** %11, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %11, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %167, %136, %113, %99, %50
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local i8** @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_exec(%struct.TYPE_7__*, i8*, i32, %struct.TYPE_8__*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @SQLITE_INT_TO_PTR(i32) #1

declare dso_local i32 @sqlite3_free_table(i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i8** @sqlite3_realloc64(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
