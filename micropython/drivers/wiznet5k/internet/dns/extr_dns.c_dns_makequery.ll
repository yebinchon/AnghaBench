; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_dns_makequery.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_dns_makequery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCNAME = common dso_local global i32 0, align 4
@DNS_MSGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_makequery(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @MAXCNAME, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32*, i32** %7, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* @DNS_MSGID, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @DNS_MSGID, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @DNS_MSGID, align 4
  %25 = call i32* @put16(i32* %23, i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 11
  %28 = or i32 %27, 256
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32* @put16(i32* %29, i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32* @put16(i32* %32, i32 1)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @put16(i32* %34, i32 0)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @put16(i32* %36, i32 0)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @put16(i32* %38, i32 0)
  store i32* %39, i32** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcpy(i8* %19, i8* %40)
  store i8* %19, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %79, %4
  %45 = load i8*, i8** %13, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 46)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  br label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %89

65:                                               ; preds = %58
  %66 = load i32*, i32** %9, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @memcpy(i32* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  store i32 0, i32* %77, align 4
  br label %89

79:                                               ; preds = %65
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i8*, i8** %13, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %13, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %44

89:                                               ; preds = %76, %64
  %90 = load i32*, i32** %9, align 8
  %91 = call i32* @put16(i32* %90, i32 1)
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32* @put16(i32* %92, i32 1)
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = ptrtoint i32* %94 to i64
  %96 = load i32*, i32** %7, align 8
  %97 = ptrtoint i32* %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = trunc i64 %98 to i32
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @put16(i32*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
