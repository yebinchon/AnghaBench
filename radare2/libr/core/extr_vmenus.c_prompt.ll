; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c_prompt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prompt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %6, align 8
  %8 = call %struct.TYPE_4__* (...) @r_cons_singleton()
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %7, align 8
  %14 = call i32 @r_cons_show_cursor(i32 1)
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = call %struct.TYPE_4__* (...) @r_cons_singleton()
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strdup(i8* %29)
  %31 = call %struct.TYPE_4__* (...) @r_cons_singleton()
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i8* %30, i8** %34, align 8
  br label %42

35:                                               ; preds = %17, %2
  %36 = call %struct.TYPE_4__* (...) @r_cons_singleton()
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @R_FREE(i8* %40)
  br label %42

42:                                               ; preds = %35, %22
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %43, align 16
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @r_line_set_prompt(i8* %44)
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %47 = call i64 @r_cons_fgets(i8* %46, i32 1023, i32 0, i32* null)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %50, align 16
  br label %51

51:                                               ; preds = %49, %42
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %57 = call i8* @strdup(i8* %56)
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @r_line_set_prompt(i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  %63 = call %struct.TYPE_4__* (...) @r_cons_singleton()
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @R_FREE(i8* %67)
  %69 = load i8*, i8** %6, align 8
  ret i8* %69
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.TYPE_4__* @r_cons_singleton(...) #1

declare dso_local i32 @r_cons_show_cursor(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @r_line_set_prompt(i8*) #1

declare dso_local i64 @r_cons_fgets(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
