; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos.c_kuhl_m_kerberos_ptt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos.c_kuhl_m_kerberos_ptt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i32] [i32 42, i32 32, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 58, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 42, i32 46, i32 107, i32 105, i32 114, i32 98, i32 105, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kerberos_ptt(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %47, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @PathIsDirectory(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = load i32**, i32*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kprintf(i8* bitcast ([19 x i32]* @.str to i8*), i32* %23)
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @kull_m_file_Find(i32* %29, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32 %30, i32 0, i32 %31, i32 (i32, i32*, i32, i32*)* @kuhl_m_kerberos_ptt_directory, i32* null)
  br label %46

33:                                               ; preds = %10
  %34 = load i32**, i32*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32**, i32*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @PathFindFileName(i32* %43)
  %45 = call i32 @kuhl_m_kerberos_ptt_directory(i32 0, i32* %38, i32 %44, i32* null)
  br label %46

46:                                               ; preds = %33, %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %6

50:                                               ; preds = %6
  %51 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %51
}

declare dso_local i64 @PathIsDirectory(i32*) #1

declare dso_local i32 @kprintf(i8*, i32*) #1

declare dso_local i32 @kull_m_file_Find(i32*, i8*, i32, i32, i32, i32 (i32, i32*, i32, i32*)*, i32*) #1

declare dso_local i32 @kuhl_m_kerberos_ptt_directory(i32, i32*, i32, i32*) #1

declare dso_local i32 @PathFindFileName(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
