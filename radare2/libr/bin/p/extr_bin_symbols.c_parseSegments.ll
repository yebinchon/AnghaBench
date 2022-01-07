; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseSegments.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseSegments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r_bin_section_free = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @parseSegments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parseSegments(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @calloc(i32 %18, i32 32)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 32
  %25 = call i32 @r_buf_read_at(i32* %20, i32 %21, i32* %22, i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i64, i64* @r_bin_section_free, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32* @r_list_newf(i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %81

33:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 16
  %44 = call i32 @r_read_le32(i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = call i32 @r_read_le32(i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to i8*
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = call i32 @r_str_nlen(i8* %58, i32 16)
  %60 = call i8* @r_str_ndup(i8* %57, i32 %59)
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32* @newSection(i8* %61, i32 %62, i32 %65, i32 1)
  store i32* %66, i32** %17, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 @r_list_append(i32* %69, i32* %70)
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 32
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %38
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %34

79:                                               ; preds = %34
  %80 = load i32*, i32** %12, align 8
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %79, %32
  %82 = load i32*, i32** %4, align 8
  ret i32* %82
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32* @r_list_newf(i32) #1

declare dso_local i32 @r_read_le32(i32*) #1

declare dso_local i8* @r_str_ndup(i8*, i32) #1

declare dso_local i32 @r_str_nlen(i8*, i32) #1

declare dso_local i32* @newSection(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
