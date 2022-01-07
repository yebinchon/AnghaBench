; ModuleID = '/home/carl/AnghaBench/openssl/crypto/idea/extr_i_skey.c_IDEA_set_encrypt_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/idea/extr_i_skey.c_IDEA_set_encrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IDEA_set_encrypt_key(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32* %16, i32** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @n2s(i8* %17, i32 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @n2s(i8* %22, i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @n2s(i8* %27, i32 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @n2s(i8* %32, i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @n2s(i8* %37, i32 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @n2s(i8* %42, i32 %45)
  %47 = load i8*, i8** %3, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @n2s(i8* %47, i32 %50)
  %52 = load i8*, i8** %3, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @n2s(i8* %52, i32 %55)
  %57 = load i32*, i32** %6, align 8
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  store i32* %59, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %158, %2
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %161

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 %70, 9
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 7
  %74 = or i32 %71, %73
  %75 = and i32 %74, 65535
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, 9
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 7
  %85 = or i32 %82, %84
  %86 = and i32 %85, 65535
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 9
  %94 = load i32, i32* %9, align 4
  %95 = ashr i32 %94, 7
  %96 = or i32 %93, %95
  %97 = and i32 %96, 65535
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %103, 9
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %105, 7
  %107 = or i32 %104, %106
  %108 = and i32 %107, 65535
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = shl i32 %114, 9
  %116 = load i32, i32* %9, align 4
  %117 = ashr i32 %116, 7
  %118 = or i32 %115, %117
  %119 = and i32 %118, 65535
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 7
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %125, 9
  %127 = load i32, i32* %8, align 4
  %128 = ashr i32 %127, 7
  %129 = or i32 %126, %128
  %130 = and i32 %129, 65535
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %6, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp sge i32 %136, 5
  br i1 %137, label %138, label %139

138:                                              ; preds = %63
  br label %161

139:                                              ; preds = %63
  %140 = load i32, i32* %8, align 4
  %141 = shl i32 %140, 9
  %142 = load i32, i32* %9, align 4
  %143 = ashr i32 %142, 7
  %144 = or i32 %141, %143
  %145 = and i32 %144, 65535
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %6, align 8
  store i32 %145, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = shl i32 %148, 9
  %150 = load i32, i32* %10, align 4
  %151 = ashr i32 %150, 7
  %152 = or i32 %149, %151
  %153 = and i32 %152, 65535
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %6, align 8
  store i32 %153, i32* %154, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 8
  store i32* %157, i32** %7, align 8
  br label %158

158:                                              ; preds = %139
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %60

161:                                              ; preds = %138, %60
  ret void
}

declare dso_local i32 @n2s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
