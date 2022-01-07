; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_get_debug_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_get_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64, i64, i8*, i32, %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8*, i32, i8, i8 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@spl_ce_SplFileInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pathName\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fileName\00", align 1
@SPL_FS_DIR = common dso_local global i64 0, align 8
@spl_ce_RecursiveDirectoryIterator = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"subPathName\00", align 1
@SPL_FS_FILE = common dso_local global i64 0, align 8
@spl_ce_SplFileObject = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"openMode\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"enclosure\00", align 1
@php_glob_stream_ops = common dso_local global i32 0, align 4
@spl_ce_DirectoryIterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @spl_filesystem_object_get_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_filesystem_object_get_debug_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_12__* @spl_filesystem_from_obj(i32* %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  store i32 1, i32* %14, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 6
  %23 = call i32 @rebuild_object_properties(%struct.TYPE_13__* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @zend_array_dup(i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* @spl_ce_SplFileInfo, align 4
  %31 = call i32* @spl_gen_private_prop_name(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i32* %31, i32** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call i8* @spl_filesystem_object_get_pathname(%struct.TYPE_12__* %32, i64* %10)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i8*, i8** %9, align 8
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %38 ]
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @ZVAL_STRINGL(i32* %6, i8* %40, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @zend_symtable_update(i32* %44, i32* %45, i32* %6)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @zend_string_release_ex(i32* %47, i32 0)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %96

53:                                               ; preds = %39
  %54 = load i32, i32* @spl_ce_SplFileInfo, align 4
  %55 = call i32* @spl_gen_private_prop_name(i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  store i32* %55, i32** %8, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = call i32 @spl_filesystem_object_get_path(%struct.TYPE_12__* %56, i64* %10)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  %78 = sub i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ZVAL_STRINGL(i32* %6, i8* %72, i32 %79)
  br label %90

81:                                               ; preds = %60, %53
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @ZVAL_STRINGL(i32* %6, i8* %84, i32 %88)
  br label %90

90:                                               ; preds = %81, %66
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @zend_symtable_update(i32* %91, i32* %92, i32* %6)
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @zend_string_release_ex(i32* %94, i32 0)
  br label %96

96:                                               ; preds = %90, %39
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SPL_FS_DIR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %131

102:                                              ; preds = %96
  %103 = load i32, i32* @spl_ce_RecursiveDirectoryIterator, align 4
  %104 = call i32* @spl_gen_private_prop_name(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  store i32* %104, i32** %8, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %102
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ZVAL_STRINGL(i32* %6, i8* %116, i32 %121)
  br label %125

123:                                              ; preds = %102
  %124 = call i32 @ZVAL_EMPTY_STRING(i32* %6)
  br label %125

125:                                              ; preds = %123, %111
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @zend_symtable_update(i32* %126, i32* %127, i32* %6)
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @zend_string_release_ex(i32* %129, i32 0)
  br label %131

131:                                              ; preds = %125, %96
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SPL_FS_FILE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %187

137:                                              ; preds = %131
  %138 = load i32, i32* @spl_ce_SplFileObject, align 4
  %139 = call i32* @spl_gen_private_prop_name(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  store i32* %139, i32** %8, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ZVAL_STRINGL(i32* %6, i8* %144, i32 %149)
  %151 = load i32*, i32** %7, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @zend_symtable_update(i32* %151, i32* %152, i32* %6)
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @zend_string_release_ex(i32* %154, i32 0)
  %156 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %156, align 1
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i8, i8* %160, align 4
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %161, i8* %162, align 1
  %163 = load i32, i32* @spl_ce_SplFileObject, align 4
  %164 = call i32* @spl_gen_private_prop_name(i32 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  store i32* %164, i32** %8, align 8
  %165 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %166 = call i32 @ZVAL_STRINGL(i32* %6, i8* %165, i32 1)
  %167 = load i32*, i32** %7, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = call i32 @zend_symtable_update(i32* %167, i32* %168, i32* %6)
  %170 = load i32*, i32** %8, align 8
  %171 = call i32 @zend_string_release_ex(i32* %170, i32 0)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load i8, i8* %175, align 1
  %177 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %176, i8* %177, align 1
  %178 = load i32, i32* @spl_ce_SplFileObject, align 4
  %179 = call i32* @spl_gen_private_prop_name(i32 %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  store i32* %179, i32** %8, align 8
  %180 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %181 = call i32 @ZVAL_STRINGL(i32* %6, i8* %180, i32 1)
  %182 = load i32*, i32** %7, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = call i32 @zend_symtable_update(i32* %182, i32* %183, i32* %6)
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 @zend_string_release_ex(i32* %185, i32 0)
  br label %187

187:                                              ; preds = %137, %131
  %188 = load i32*, i32** %7, align 8
  ret i32* %188
}

declare dso_local %struct.TYPE_12__* @spl_filesystem_from_obj(i32*) #1

declare dso_local i32 @rebuild_object_properties(%struct.TYPE_13__*) #1

declare dso_local i32* @zend_array_dup(i32) #1

declare dso_local i32* @spl_gen_private_prop_name(i32, i8*, i32) #1

declare dso_local i8* @spl_filesystem_object_get_pathname(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @zend_symtable_update(i32*, i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @spl_filesystem_object_get_path(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
