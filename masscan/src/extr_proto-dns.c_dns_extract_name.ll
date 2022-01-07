; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_dns_extract_name.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_dns_extract_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DomainPointer = type { i8, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.DomainPointer*)* @dns_extract_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_extract_name(i8* %0, i32 %1, i32 %2, %struct.DomainPointer* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.DomainPointer*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.DomainPointer* %3, %struct.DomainPointer** %8, align 8
  %10 = load %struct.DomainPointer*, %struct.DomainPointer** %8, align 8
  %11 = getelementptr inbounds %struct.DomainPointer, %struct.DomainPointer* %10, i32 0, i32 0
  store i8 0, i8* %11, align 8
  br label %12

12:                                               ; preds = %94, %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %95

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 192
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 192
  %30 = icmp ne i32 %29, 192
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %95

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  %35 = load i32, i32* %7, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %95

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 63
  %46 = shl i32 %45, 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %46, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  br label %94

57:                                               ; preds = %17
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %95

61:                                               ; preds = %57
  %62 = load %struct.DomainPointer*, %struct.DomainPointer** %8, align 8
  %63 = getelementptr inbounds %struct.DomainPointer, %struct.DomainPointer* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.DomainPointer*, %struct.DomainPointer** %8, align 8
  %67 = getelementptr inbounds %struct.DomainPointer, %struct.DomainPointer* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 8
  %69 = sext i8 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  %78 = call i32 @memcpy(i8* %71, i8* %75, i32 %77)
  %79 = load %struct.DomainPointer*, %struct.DomainPointer** %8, align 8
  %80 = getelementptr inbounds %struct.DomainPointer, %struct.DomainPointer* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 8
  %82 = sext i8 %81 to i32
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %82, %83
  %85 = add i32 %84, 1
  %86 = trunc i32 %85 to i8
  %87 = load %struct.DomainPointer*, %struct.DomainPointer** %8, align 8
  %88 = getelementptr inbounds %struct.DomainPointer, %struct.DomainPointer* %87, i32 0, i32 0
  store i8 %86, i8* %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  %91 = load i32, i32* %6, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %61
  br label %94

94:                                               ; preds = %93, %56
  br label %12

95:                                               ; preds = %60, %37, %31, %16
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
