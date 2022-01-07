; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-binary.c_binary_out_banner.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-binary.c_binary_out_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@binary_out_banner.HeaderLength = internal constant i32 14, align 4
@Out_Banner9 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i32, i32, i32, i32, i32, i32, i8*, i32)* @binary_out_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binary_out_banner(%struct.Output* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9) #0 {
  %11 = alloca %struct.Output*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [32768 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.Output* %0, %struct.Output** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32 %9, i32* %20, align 4
  %24 = load %struct.Output*, %struct.Output** %11, align 8
  %25 = call i32 @UNUSEDPARM(%struct.Output* %24)
  %26 = load i8, i8* @Out_Banner9, align 1
  %27 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 0
  store i8 %26, i8* %27, align 16
  %28 = load i32, i32* %20, align 4
  %29 = icmp uge i32 %28, 16370
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  br label %182

31:                                               ; preds = %10
  %32 = load i32, i32* %20, align 4
  %33 = icmp ult i32 %32, 114
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %20, align 4
  %36 = add i32 %35, 14
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  store i32 2, i32* %22, align 4
  br label %53

39:                                               ; preds = %31
  %40 = load i32, i32* %20, align 4
  %41 = add i32 %40, 14
  %42 = lshr i32 %41, 7
  %43 = trunc i32 %42 to i8
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 128
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %20, align 4
  %49 = add i32 %48, 14
  %50 = and i32 %49, 127
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 2
  store i8 %51, i8* %52, align 2
  store i32 3, i32* %22, align 4
  br label %53

53:                                               ; preds = %39, %34
  %54 = load i32, i32* %13, align 4
  %55 = ashr i32 %54, 24
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %22, align 4
  %58 = add i32 %57, 0
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %59
  store i8 %56, i8* %60, align 1
  %61 = load i32, i32* %13, align 4
  %62 = ashr i32 %61, 16
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* %22, align 4
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %66
  store i8 %63, i8* %67, align 1
  %68 = load i32, i32* %13, align 4
  %69 = ashr i32 %68, 8
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %22, align 4
  %72 = add i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %73
  store i8 %70, i8* %74, align 1
  %75 = load i32, i32* %13, align 4
  %76 = ashr i32 %75, 0
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %22, align 4
  %79 = add i32 %78, 3
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %80
  store i8 %77, i8* %81, align 1
  %82 = load i32, i32* %14, align 4
  %83 = lshr i32 %82, 24
  %84 = trunc i32 %83 to i8
  %85 = load i32, i32* %22, align 4
  %86 = add i32 %85, 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %87
  store i8 %84, i8* %88, align 1
  %89 = load i32, i32* %14, align 4
  %90 = lshr i32 %89, 16
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %22, align 4
  %93 = add i32 %92, 5
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %94
  store i8 %91, i8* %95, align 1
  %96 = load i32, i32* %14, align 4
  %97 = lshr i32 %96, 8
  %98 = trunc i32 %97 to i8
  %99 = load i32, i32* %22, align 4
  %100 = add i32 %99, 6
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %101
  store i8 %98, i8* %102, align 1
  %103 = load i32, i32* %14, align 4
  %104 = lshr i32 %103, 0
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %22, align 4
  %107 = add i32 %106, 7
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %108
  store i8 %105, i8* %109, align 1
  %110 = load i32, i32* %15, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i32, i32* %22, align 4
  %113 = add i32 %112, 8
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %114
  store i8 %111, i8* %115, align 1
  %116 = load i32, i32* %16, align 4
  %117 = lshr i32 %116, 8
  %118 = trunc i32 %117 to i8
  %119 = load i32, i32* %22, align 4
  %120 = add i32 %119, 9
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %121
  store i8 %118, i8* %122, align 1
  %123 = load i32, i32* %16, align 4
  %124 = lshr i32 %123, 0
  %125 = trunc i32 %124 to i8
  %126 = load i32, i32* %22, align 4
  %127 = add i32 %126, 10
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %128
  store i8 %125, i8* %129, align 1
  %130 = load i32, i32* %17, align 4
  %131 = lshr i32 %130, 8
  %132 = trunc i32 %131 to i8
  %133 = load i32, i32* %22, align 4
  %134 = add i32 %133, 11
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %135
  store i8 %132, i8* %136, align 1
  %137 = load i32, i32* %17, align 4
  %138 = lshr i32 %137, 0
  %139 = trunc i32 %138 to i8
  %140 = load i32, i32* %22, align 4
  %141 = add i32 %140, 12
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %142
  store i8 %139, i8* %143, align 1
  %144 = load i32, i32* %18, align 4
  %145 = trunc i32 %144 to i8
  %146 = load i32, i32* %22, align 4
  %147 = add i32 %146, 13
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 %148
  store i8 %145, i8* %149, align 1
  %150 = getelementptr inbounds [32768 x i8], [32768 x i8]* %21, i64 0, i64 0
  %151 = load i32, i32* %22, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 14
  %155 = load i8*, i8** %19, align 8
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @memcpy(i8* %154, i8* %155, i32 %156)
  %158 = bitcast [32768 x i8]* %21 to i8**
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %22, align 4
  %161 = add i32 %159, %160
  %162 = add i32 %161, 14
  %163 = load i32*, i32** %12, align 8
  %164 = call i64 @fwrite(i8** %158, i32 1, i32 %162, i32* %163)
  store i64 %164, i64* %23, align 8
  %165 = load i64, i64* %23, align 8
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* %22, align 4
  %168 = add i32 %166, %167
  %169 = add i32 %168, 14
  %170 = zext i32 %169 to i64
  %171 = icmp ne i64 %165, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %53
  %173 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %174 = call i32 @exit(i32 1) #3
  unreachable

175:                                              ; preds = %53
  %176 = load i64, i64* %23, align 8
  %177 = load %struct.Output*, %struct.Output** %11, align 8
  %178 = getelementptr inbounds %struct.Output, %struct.Output* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, %176
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %175, %30
  ret void
}

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @fwrite(i8**, i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
