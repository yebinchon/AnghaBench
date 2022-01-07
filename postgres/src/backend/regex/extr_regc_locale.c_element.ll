; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_element.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cname = type { i32, i32* }
%struct.vars = type { i32 }

@REG_ULOCALE = common dso_local global i32 0, align 4
@cnames = common dso_local global %struct.cname* null, align 8
@REG_ECOLLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, i32*, i32*)* @element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @element(%struct.vars* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vars*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cname*, align 8
  %9 = alloca i64, align 8
  store %struct.vars* %0, %struct.vars** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ult i32* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load i32, i32* @REG_ULOCALE, align 4
  %28 = call i32 @NOTE(i32 %27)
  %29 = load %struct.cname*, %struct.cname** @cnames, align 8
  store %struct.cname* %29, %struct.cname** %8, align 8
  br label %30

30:                                               ; preds = %52, %26
  %31 = load %struct.cname*, %struct.cname** %8, align 8
  %32 = getelementptr inbounds %struct.cname, %struct.cname* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.cname*, %struct.cname** %8, align 8
  %37 = getelementptr inbounds %struct.cname, %struct.cname* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @strlen(i32* %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.cname*, %struct.cname** %8, align 8
  %44 = getelementptr inbounds %struct.cname, %struct.cname* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @pg_char_and_wchar_strncmp(i32* %45, i32* %46, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42, %35
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.cname*, %struct.cname** %8, align 8
  %54 = getelementptr inbounds %struct.cname, %struct.cname* %53, i32 1
  store %struct.cname* %54, %struct.cname** %8, align 8
  br label %30

55:                                               ; preds = %50, %30
  %56 = load %struct.cname*, %struct.cname** %8, align 8
  %57 = getelementptr inbounds %struct.cname, %struct.cname* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.cname*, %struct.cname** %8, align 8
  %62 = getelementptr inbounds %struct.cname, %struct.cname* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @CHR(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @REG_ECOLLATE, align 4
  %67 = call i32 @ERR(i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %60, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @NOTE(i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @pg_char_and_wchar_strncmp(i32*, i32*, i64) #1

declare dso_local i32 @CHR(i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
