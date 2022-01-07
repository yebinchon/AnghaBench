; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_udp_checksum2.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_udp_checksum2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_checksum2(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 17, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add i32 %15, 12
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 13
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %21, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 14
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 15
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %40, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 16
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 17
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %59, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 18
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 19
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %78, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %118, %4
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %8, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %106, %107
  %109 = add i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %105, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %104, %113
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %95
  %119 = load i32, i32* %10, align 4
  %120 = add i32 %119, 2
  store i32 %120, i32* %10, align 4
  br label %90

121:                                              ; preds = %90
  %122 = load i64, i64* %8, align 8
  %123 = and i64 %122, 1
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %125, %126
  %128 = sub i32 %127, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %124, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i64
  %133 = mul i64 %123, %132
  %134 = load i64, i64* %9, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %9, align 8
  %136 = load i64, i64* %9, align 8
  %137 = and i64 %136, 65535
  %138 = load i64, i64* %9, align 8
  %139 = lshr i64 %138, 16
  %140 = add i64 %137, %139
  store i64 %140, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = and i64 %141, 65535
  %143 = load i64, i64* %9, align 8
  %144 = lshr i64 %143, 16
  %145 = add i64 %142, %144
  store i64 %145, i64* %9, align 8
  %146 = load i64, i64* %9, align 8
  %147 = and i64 %146, 65535
  %148 = load i64, i64* %9, align 8
  %149 = lshr i64 %148, 16
  %150 = add i64 %147, %149
  store i64 %150, i64* %9, align 8
  %151 = load i64, i64* %9, align 8
  %152 = trunc i64 %151 to i32
  ret i32 %152
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
