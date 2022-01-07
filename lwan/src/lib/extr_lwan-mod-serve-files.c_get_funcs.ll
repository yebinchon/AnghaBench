; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_get_funcs.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_get_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_funcs = type { i32 }
%struct.serve_files_priv = type { i32, i32, i32, i64 }
%struct.stat = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@redir_funcs = common dso_local global %struct.cache_funcs zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@dirlist_funcs = common dso_local global %struct.cache_funcs zeroinitializer, align 4
@mmap_funcs = common dso_local global %struct.cache_funcs zeroinitializer, align 4
@sendfile_funcs = common dso_local global %struct.cache_funcs zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_funcs* (%struct.serve_files_priv*, i8*, i8*, %struct.stat*)* @get_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_funcs* @get_funcs(%struct.serve_files_priv* %0, i8* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca %struct.cache_funcs*, align 8
  %6 = alloca %struct.serve_files_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.serve_files_priv* %0, %struct.serve_files_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.stat*, %struct.stat** %9, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %32 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %12, align 8
  br label %65

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @rawmemchr(i8* %36, i8 signext 0)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 47
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store %struct.cache_funcs* @redir_funcs, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

44:                                               ; preds = %35
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* @PATH_MAX, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %49 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %47, i64 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @PATH_MAX, align 4
  %57 = icmp sge i32 %55, %56
  br label %58

58:                                               ; preds = %54, %44
  %59 = phi i1 [ true, %44 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @UNLIKELY(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store %struct.cache_funcs* null, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %67 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.stat*, %struct.stat** %9, align 8
  %71 = call i64 @fstatat(i32 %68, i8* %69, %struct.stat* %70, i32 0)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @ENOENT, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @UNLIKELY(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store %struct.cache_funcs* null, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

81:                                               ; preds = %73
  %82 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %83 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @LIKELY(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store %struct.cache_funcs* @dirlist_funcs, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

88:                                               ; preds = %81
  store %struct.cache_funcs* null, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

89:                                               ; preds = %65
  %90 = load %struct.stat*, %struct.stat** %9, align 8
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @is_world_readable(i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @UNLIKELY(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  store %struct.cache_funcs* null, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

100:                                              ; preds = %89
  %101 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %102 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = add nsw i32 %104, %106
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* @PATH_MAX, align 4
  %110 = icmp sge i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @UNLIKELY(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store %struct.cache_funcs* null, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

115:                                              ; preds = %100
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %118 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  store i8 47, i8* %121, align 1
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %124 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8*, i8** %12, align 8
  %130 = load i32, i32* @PATH_MAX, align 4
  %131 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %132 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = sub nsw i32 %134, 1
  %136 = call i32 @strncpy(i8* %128, i8* %129, i32 %135)
  br label %137

137:                                              ; preds = %115, %4
  %138 = load %struct.stat*, %struct.stat** %9, align 8
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @S_ISREG(i32 %140)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i64 @UNLIKELY(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  store %struct.cache_funcs* null, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

148:                                              ; preds = %137
  %149 = load %struct.stat*, %struct.stat** %9, align 8
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 16384
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store %struct.cache_funcs* @mmap_funcs, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

154:                                              ; preds = %148
  store %struct.cache_funcs* @sendfile_funcs, %struct.cache_funcs** %5, align 8
  store i32 1, i32* %14, align 4
  br label %155

155:                                              ; preds = %154, %153, %147, %114, %99, %88, %87, %80, %63, %43
  %156 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load %struct.cache_funcs*, %struct.cache_funcs** %5, align 8
  ret %struct.cache_funcs* %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i8* @rawmemchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #2

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #2

declare dso_local i64 @LIKELY(i32) #2

declare dso_local i32 @is_world_readable(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @S_ISREG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
