; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_insert_tobeinserted.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_insert_tobeinserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.statement*, i8*)* @insert_tobeinserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_tobeinserted(i32 %0, i32 %1, %struct.statement* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.statement*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.statement* %2, %struct.statement** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.statement*, %struct.statement** %8, align 8
  %12 = getelementptr inbounds %struct.statement, %struct.statement* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add nsw i64 %14, %16
  %18 = add nsw i64 %17, 1
  %19 = load %struct.statement*, %struct.statement** %8, align 8
  %20 = getelementptr inbounds %struct.statement, %struct.statement* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @ecpg_alloc(i64 %18, i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @ecpg_free(i8* %26)
  store i32 0, i32* %5, align 4
  br label %62

28:                                               ; preds = %4
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.statement*, %struct.statement** %8, align 8
  %31 = getelementptr inbounds %struct.statement, %struct.statement* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcpy(i8* %29, i8* %32)
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strcpy(i8* %38, i8* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.statement*, %struct.statement** %8, align 8
  %43 = getelementptr inbounds %struct.statement, %struct.statement* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  %52 = call i32 @strcat(i8* %41, i8* %51)
  %53 = load %struct.statement*, %struct.statement** %8, align 8
  %54 = getelementptr inbounds %struct.statement, %struct.statement* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @ecpg_free(i8* %55)
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.statement*, %struct.statement** %8, align 8
  %59 = getelementptr inbounds %struct.statement, %struct.statement* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @ecpg_free(i8* %60)
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %28, %25
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @ecpg_alloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ecpg_free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
