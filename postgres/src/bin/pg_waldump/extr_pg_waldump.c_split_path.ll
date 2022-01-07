; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_split_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_split_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8**)* @split_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_path(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @strrchr(i8* %8, i8 signext 47)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @pg_strdup(i8* %13)
  %15 = load i8**, i8*** %5, align 8
  store i8* %14, i8** %15, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = add nsw i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %17, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i8* @pg_strdup(i8* %26)
  %28 = load i8**, i8*** %6, align 8
  store i8* %27, i8** %28, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load i8**, i8*** %5, align 8
  store i8* null, i8** %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @pg_strdup(i8* %31)
  %33 = load i8**, i8*** %6, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %29, %12
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @pg_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
