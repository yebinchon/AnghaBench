; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_gethostbyaddr.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_gethostbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8**, i8**, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"TODO: proper gethostbyaddr hook\0A\00", align 1
@gethostbyaddr.buf = internal global [16 x i8] zeroinitializer, align 16
@gethostbyaddr.ipv4 = internal global [4 x i8] zeroinitializer, align 1
@gethostbyaddr.list = internal global [2 x i8*] zeroinitializer, align 16
@gethostbyaddr.aliases = internal global [1 x i8*] zeroinitializer, align 8
@gethostbyaddr.he = internal global %struct.hostent zeroinitializer, align 8
@proxychains_resolver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"len %u\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @gethostbyaddr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = call i32 (...) @INIT()
  %9 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @proxychains_resolver, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.hostent* @true_gethostbyaddr(i8* %13, i32 %14, i32 %15)
  store %struct.hostent* %16, %struct.hostent** %4, align 8
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.hostent* null, %struct.hostent** %4, align 8
  br label %29

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gethostbyaddr.buf, i64 0, i64 0), i8** getelementptr inbounds (%struct.hostent, %struct.hostent* @gethostbyaddr.he, i32 0, i32 0), align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @memcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gethostbyaddr.ipv4, i64 0, i64 0), i8* %24, i32 4)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gethostbyaddr.ipv4, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @gethostbyaddr.list, i64 0, i64 0), align 16
  store i8* null, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @gethostbyaddr.list, i64 0, i64 1), align 8
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @gethostbyaddr.list, i64 0, i64 0), i8*** getelementptr inbounds (%struct.hostent, %struct.hostent* @gethostbyaddr.he, i32 0, i32 1), align 8
  %26 = load i32, i32* @AF_INET, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @gethostbyaddr.he, i32 0, i32 4), align 4
  store i8* null, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @gethostbyaddr.aliases, i64 0, i64 0), align 8
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @gethostbyaddr.aliases, i64 0, i64 0), i8*** getelementptr inbounds (%struct.hostent, %struct.hostent* @gethostbyaddr.he, i32 0, i32 2), align 8
  store i32 4, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @gethostbyaddr.he, i32 0, i32 3), align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @pc_stringfromipv4(i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gethostbyaddr.buf, i64 0, i64 0))
  store %struct.hostent* @gethostbyaddr.he, %struct.hostent** %4, align 8
  br label %29

29:                                               ; preds = %23, %22, %12
  %30 = load %struct.hostent*, %struct.hostent** %4, align 8
  ret %struct.hostent* %30
}

declare dso_local i32 @INIT(...) #1

declare dso_local i32 @PDEBUG(i8*, ...) #1

declare dso_local %struct.hostent* @true_gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pc_stringfromipv4(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
