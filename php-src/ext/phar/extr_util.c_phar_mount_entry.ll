; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_mount_entry.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_mount_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@pcr_is_ok = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".phar\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"phar://\00", align 1
@PHAR_TMP = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_mount_entry(%struct.TYPE_10__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 72, i1 false)
  %17 = call i64 @phar_path_check(i8** %10, i64* %11, i8** %15)
  %18 = load i64, i64* @pcr_is_ok, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @FAILURE, align 4
  store i32 %21, i32* %6, align 4
  br label %162

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = icmp uge i64 %23, 5
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @memcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @FAILURE, align 4
  store i32 %30, i32* %6, align 4
  br label %162

31:                                               ; preds = %25, %22
  %32 = load i64, i64* %9, align 8
  %33 = icmp ugt i64 %32, 7
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @memcmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 10
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i8* @estrndup(i8* %44, i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i8* @estrndup(i8* %53, i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  br label %70

57:                                               ; preds = %39
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @expand_filepath(i8* %58, i32* null)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i8* @estrndup(i8* %65, i64 %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %57
  br label %70

70:                                               ; preds = %69, %52
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @php_check_open_basedir(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @efree(i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @efree(i8* %84)
  %86 = load i32, i32* @FAILURE, align 4
  store i32 %86, i32* %6, align 4
  br label %162

87:                                               ; preds = %75, %70
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32 1, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* @PHAR_TMP, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 9
  store i32 %90, i32* %91, align 8
  %92 = load i64, i64* @SUCCESS, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i64 @php_stream_stat_path(i8* %93, %struct.TYPE_8__* %13)
  %95 = icmp ne i64 %92, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @efree(i8* %98)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @efree(i8* %101)
  %103 = load i32, i32* @FAILURE, align 4
  store i32 %103, i32* %6, align 4
  br label %162

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @S_IFDIR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store i32 1, i32* %112, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32* @zend_hash_str_add_ptr(i32* %114, i8* %116, i64 %117, i8* %119)
  %121 = icmp eq i32* null, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @efree(i8* %124)
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @efree(i8* %127)
  %129 = load i32, i32* @FAILURE, align 4
  store i32 %129, i32* %6, align 4
  br label %162

130:                                              ; preds = %111
  br label %138

131:                                              ; preds = %104
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store i32 0, i32* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %131, %130
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i32 %141, i32* %142, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* %11, align 8
  %148 = bitcast %struct.TYPE_9__* %12 to i8*
  %149 = call i32* @zend_hash_str_add_mem(i32* %144, i8* %146, i64 %147, i8* %148, i32 72)
  %150 = icmp ne i32* null, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  %152 = load i64, i64* @SUCCESS, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %6, align 4
  br label %162

154:                                              ; preds = %138
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @efree(i8* %156)
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @efree(i8* %159)
  %161 = load i32, i32* @FAILURE, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %154, %151, %122, %96, %79, %29, %20
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @phar_path_check(i8**, i64*, i8**) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i8* @estrndup(i8*, i64) #2

declare dso_local i8* @expand_filepath(i8*, i32*) #2

declare dso_local i64 @php_check_open_basedir(i8*) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i64 @php_stream_stat_path(i8*, %struct.TYPE_8__*) #2

declare dso_local i32* @zend_hash_str_add_ptr(i32*, i8*, i64, i8*) #2

declare dso_local i32* @zend_hash_str_add_mem(i32*, i8*, i64, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
