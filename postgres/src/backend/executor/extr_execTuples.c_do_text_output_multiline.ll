; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_do_text_output_multiline.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_do_text_output_multiline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_text_output_multiline(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x i32], align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast [1 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 10)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  br label %35

28:                                               ; preds = %14
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %28, %19
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @cstring_to_text_with_len(i8* %36, i32 %37)
  %39 = call i32 @PointerGetDatum(i32 %38)
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %44 = call i32 @do_tup_output(i32* %41, i32* %42, i32* %43)
  %45 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DatumGetPointer(i32 %46)
  %48 = call i32 @pfree(i32 %47)
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %4, align 8
  br label %10

50:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @PointerGetDatum(i32) #2

declare dso_local i32 @cstring_to_text_with_len(i8*, i32) #2

declare dso_local i32 @do_tup_output(i32*, i32*, i32*) #2

declare dso_local i32 @pfree(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
