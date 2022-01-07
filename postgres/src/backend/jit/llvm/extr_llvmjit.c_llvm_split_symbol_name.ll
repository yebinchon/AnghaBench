; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_split_symbol_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_split_symbol_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"pgextern.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llvm_split_symbol_name(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load i8**, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load i8**, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @rindex(i8* %14, i8 signext 46)
  %16 = load i8**, i8*** %6, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %17, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = sub nsw i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i8* @pnstrdup(i8* %23, i32 %34)
  %36 = load i8**, i8*** %5, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = call i32 @Assert(i8** %37)
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @pstrdup(i8* %40)
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  br label %48

43:                                               ; preds = %3
  %44 = load i8**, i8*** %5, align 8
  store i8* null, i8** %44, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @pstrdup(i8* %45)
  %47 = load i8**, i8*** %6, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %13
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @rindex(i8*, i8 signext) #1

declare dso_local i8* @pnstrdup(i8*, i32) #1

declare dso_local i32 @Assert(i8**) #1

declare dso_local i8* @pstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
