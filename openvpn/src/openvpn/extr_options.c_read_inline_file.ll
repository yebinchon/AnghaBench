; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_read_inline_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_read_inline_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_src = type { i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@OPTION_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ERROR: Endtag %s missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.in_src*, i8*, %struct.gc_arena*)* @read_inline_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_inline_file(%struct.in_src* %0, i8* %1, %struct.gc_arena* %2) #0 {
  %4 = alloca %struct.in_src*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gc_arena*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.buffer, align 4
  store %struct.in_src* %0, %struct.in_src** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %6, align 8
  %14 = load i32, i32* @OPTION_LINE_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @OPTION_LINE_SIZE, align 4
  %19 = mul nsw i32 8, %18
  %20 = call i32 @alloc_buf(i32 %19)
  %21 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %61, %3
  %23 = load %struct.in_src*, %struct.in_src** %4, align 8
  %24 = trunc i64 %15 to i32
  %25 = call i64 @in_src_get(%struct.in_src* %23, i8* %17, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  store i8* %17, i8** %12, align 8
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %12, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = call i32 @strncmp(i8* %37, i8* %38, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %63

44:                                               ; preds = %36
  %45 = call i64 @strlen(i8* %17)
  %46 = add nsw i64 %45, 1
  %47 = call i32 @buf_safe(%struct.buffer* %9, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @alloc_buf(i32 %52)
  %54 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = call i32 @buf_copy(%struct.buffer* %13, %struct.buffer* %9)
  %56 = call i32 @ASSERT(i32 %55)
  %57 = call i32 @buf_clear(%struct.buffer* %9)
  %58 = call i32 @free_buf(%struct.buffer* %9)
  %59 = bitcast %struct.buffer* %9 to i8*
  %60 = bitcast %struct.buffer* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  br label %61

61:                                               ; preds = %49, %44
  %62 = call i32 @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %22

63:                                               ; preds = %43, %22
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @M_FATAL, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @msg(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = call i32 @BSTR(%struct.buffer* %9)
  %72 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %73 = call i8* @string_alloc(i32 %71, %struct.gc_arena* %72)
  store i8* %73, i8** %10, align 8
  %74 = call i32 @buf_clear(%struct.buffer* %9)
  %75 = call i32 @free_buf(%struct.buffer* %9)
  %76 = trunc i64 %15 to i32
  %77 = call i32 @secure_memzero(i8* %17, i32 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i8* %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @alloc_buf(i32) #2

declare dso_local i64 @in_src_get(%struct.in_src*, i8*, i32) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @buf_safe(%struct.buffer*, i64) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @buf_copy(%struct.buffer*, %struct.buffer*) #2

declare dso_local i32 @buf_clear(%struct.buffer*) #2

declare dso_local i32 @free_buf(%struct.buffer*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*) #2

declare dso_local i32 @msg(i32, i8*, i8*) #2

declare dso_local i8* @string_alloc(i32, %struct.gc_arena*) #2

declare dso_local i32 @BSTR(%struct.buffer*) #2

declare dso_local i32 @secure_memzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
