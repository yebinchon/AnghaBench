; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_inline_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_inline_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_src = type { i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@INLINE_FILE_TAG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"</%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_src*, i8**, %struct.gc_arena*)* @check_inline_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_inline_file(%struct.in_src* %0, i8** %1, %struct.gc_arena* %2) #0 {
  %4 = alloca %struct.in_src*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.gc_arena*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.buffer, align 4
  %10 = alloca %struct.buffer, align 4
  store %struct.in_src* %0, %struct.in_src** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %80, label %20

20:                                               ; preds = %15
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 60
  br i1 %28, label %29, label %79

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 62
  br i1 %38, label %39, label %79

39:                                               ; preds = %29
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %49 = call i8* @string_alloc(i8* %47, %struct.gc_arena* %48)
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @INLINE_FILE_TAG, align 8
  %53 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %54 = call i8* @string_alloc(i8* %52, %struct.gc_arena* %53)
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %54, i8** %56, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = add nsw i32 %60, 4
  %62 = call i32 @alloc_buf(i32 %61)
  %63 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = bitcast %struct.buffer* %9 to i8*
  %65 = bitcast %struct.buffer* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.in_src*, %struct.in_src** %4, align 8
  %71 = call i32 @BSTR(%struct.buffer* %9)
  %72 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %73 = call i8* @read_inline_file(%struct.in_src* %70, i32 %71, %struct.gc_arena* %72)
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8* %73, i8** %75, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 3
  store i8* null, i8** %77, align 8
  %78 = call i32 @free_buf(%struct.buffer* %9)
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %39, %29, %20
  br label %80

80:                                               ; preds = %79, %15, %3
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @string_alloc(i8*, %struct.gc_arena*) #1

declare dso_local i32 @alloc_buf(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*) #1

declare dso_local i8* @read_inline_file(%struct.in_src*, i32, %struct.gc_arena*) #1

declare dso_local i32 @BSTR(%struct.buffer*) #1

declare dso_local i32 @free_buf(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
