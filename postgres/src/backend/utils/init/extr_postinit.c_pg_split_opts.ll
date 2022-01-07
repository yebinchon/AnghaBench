; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_pg_split_opts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_pg_split_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_split_opts(i8** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @initStringInfo(%struct.TYPE_5__* %7)
  br label %10

10:                                               ; preds = %60, %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  %15 = call i32 @resetStringInfo(%struct.TYPE_5__* %7)
  br label %16

16:                                               ; preds = %21, %14
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @isspace(i8 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  br label %16

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %70

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isspace(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %60

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  br label %57

53:                                               ; preds = %47, %44
  store i32 0, i32* %8, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @appendStringInfoChar(%struct.TYPE_5__* %7, i8 signext %55)
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %31

60:                                               ; preds = %43, %31
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @pstrdup(i32 %62)
  %64 = load i8**, i8*** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8*, i8** %64, i64 %68
  store i8* %63, i8** %69, align 8
  br label %10

70:                                               ; preds = %29, %10
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pfree(i32 %72)
  ret void
}

declare dso_local i32 @initStringInfo(%struct.TYPE_5__*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_5__*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @pfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
