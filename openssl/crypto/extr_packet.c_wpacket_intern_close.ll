; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_packet.c_wpacket_intern_close.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_packet.c_wpacket_intern_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i64, i32 }

@WPACKET_FLAGS_NON_ZERO_LENGTH = common dso_local global i32 0, align 4
@WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @wpacket_intern_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpacket_intern_close(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WPACKET_FLAGS_NON_ZERO_LENGTH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %109

27:                                               ; preds = %19, %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %109

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %41
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %53, %41
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %30, %27
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = call i8* @GETBUF(%struct.TYPE_8__* %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @put_value(i8* %88, i64 %89, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %109

96:                                               ; preds = %83, %78
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = call i32 @OPENSSL_free(%struct.TYPE_7__* %106)
  br label %108

108:                                              ; preds = %100, %97
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %95, %40, %26
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i8* @GETBUF(%struct.TYPE_8__*) #1

declare dso_local i32 @put_value(i8*, i64, i64) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
