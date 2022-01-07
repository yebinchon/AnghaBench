; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_buildACLQueries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_buildACLQueries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [328 x i8] c"(SELECT pg_catalog.array_agg(acl ORDER BY row_n) FROM (SELECT acl, row_n FROM pg_catalog.unnest(coalesce(%s,pg_catalog.acldefault(%s,%s))) WITH ORDINALITY AS perm(acl,row_n) WHERE NOT EXISTS ( SELECT 1 FROM pg_catalog.unnest(coalesce(pip.initprivs,pg_catalog.acldefault(%s,%s))) AS init(init_acl) WHERE acl = init_acl)) as foo)\00", align 1
@.str.1 = private unnamed_addr constant [330 x i8] c"(SELECT pg_catalog.array_agg(acl ORDER BY row_n) FROM (SELECT acl, row_n FROM pg_catalog.unnest(coalesce(pip.initprivs,pg_catalog.acldefault(%s,%s))) WITH ORDINALITY AS initp(acl,row_n) WHERE NOT EXISTS ( SELECT 1 FROM pg_catalog.unnest(coalesce(%s,pg_catalog.acldefault(%s,%s))) AS permp(orig_acl) WHERE acl = orig_acl)) as foo)\00", align 1
@.str.2 = private unnamed_addr constant [312 x i8] c"CASE WHEN privtype = 'e' THEN (SELECT pg_catalog.array_agg(acl ORDER BY row_n) FROM (SELECT acl, row_n FROM pg_catalog.unnest(pip.initprivs) WITH ORDINALITY AS initp(acl,row_n) WHERE NOT EXISTS ( SELECT 1 FROM pg_catalog.unnest(pg_catalog.acldefault(%s,%s)) AS privm(orig_acl) WHERE acl = orig_acl)) as foo) END\00", align 1
@.str.3 = private unnamed_addr constant [297 x i8] c"CASE WHEN privtype = 'e' THEN (SELECT pg_catalog.array_agg(acl) FROM (SELECT acl, row_n FROM pg_catalog.unnest(pg_catalog.acldefault(%s,%s)) WITH ORDINALITY AS privp(acl,row_n) WHERE NOT EXISTS ( SELECT 1 FROM pg_catalog.unnest(pip.initprivs) AS initp(init_acl) WHERE acl = init_acl)) as foo) END\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buildACLQueries(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %13, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = load i8*, i8** %15, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 (i32, i8*, ...) @printfPQExpBuffer(i32 %17, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19, i8* %20, i8* %21, i8* %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %15, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 (i32, i8*, ...) @printfPQExpBuffer(i32 %24, i8* getelementptr inbounds ([330 x i8], [330 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26, i8* %27, i8* %28, i8* %29)
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %8
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 (i32, i8*, ...) @printfPQExpBuffer(i32 %34, i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 (i32, i8*, ...) @printfPQExpBuffer(i32 %38, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.3, i64 0, i64 0), i8* %39, i8* %40)
  br label %47

42:                                               ; preds = %8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i8*, ...) @printfPQExpBuffer(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i8*, ...) @printfPQExpBuffer(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %33
  ret void
}

declare dso_local i32 @printfPQExpBuffer(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
