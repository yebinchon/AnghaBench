; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/ipv6/6rd/src/extr_6rdcalc.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/ipv6/6rd/src/extr_6rdcalc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32, i32 }
%struct.in_addr = type { i32, i32 }

@INET6_PREFIXSTRLEN = common dso_local global i32 0, align 4
@INET_PREFIXSTRLEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* @INET6_PREFIXSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @INET_PREFIXSTRLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @print_usage()
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @INET6_PREFIXSTRLEN, align 4
  %34 = call i32 @strncpy(i8* %21, i8* %32, i32 %33)
  %35 = load i32, i32* @INET6_PREFIXSTRLEN, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %21, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* @AF_INET6, align 4
  %40 = bitcast %struct.in6_addr* %9 to %struct.in_addr*
  %41 = call i32 @parse_str(i32 %39, i8* %21, %struct.in_addr* %40, i64* %11)
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @INET_PREFIXSTRLEN, align 4
  %46 = call i32 @strncpy(i8* %24, i8* %44, i32 %45)
  %47 = load i32, i32* @INET_PREFIXSTRLEN, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %21, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* @AF_INET, align 4
  %52 = call i32 @parse_str(i32 %51, i8* %24, %struct.in_addr* %10, i64* %12)
  %53 = load i64, i64* %12, align 8
  %54 = sub i64 32, %53
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %54, %55
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ugt i64 %57, 128
  br i1 %58, label %59, label %61

59:                                               ; preds = %29
  %60 = call i32 (...) @print_usage()
  br label %61

61:                                               ; preds = %59, %29
  br label %62

62:                                               ; preds = %110, %61
  %63 = load i64, i64* %12, align 8
  %64 = icmp ult i64 %63, 32
  br i1 %64, label %65, label %115

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %67 = bitcast i32* %66 to i8*
  %68 = load i64, i64* %11, align 8
  %69 = lshr i64 %68, 3
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %15, align 8
  %71 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 1
  %72 = bitcast i32* %71 to i8*
  %73 = load i64, i64* %12, align 8
  %74 = lshr i64 %73, 3
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %14, align 8
  %76 = load i64, i64* %11, align 8
  %77 = and i64 %76, 7
  %78 = trunc i64 %77 to i32
  %79 = ashr i32 128, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %17, align 1
  %81 = load i64, i64* %12, align 8
  %82 = and i64 %81, 7
  %83 = trunc i64 %82 to i32
  %84 = ashr i32 128, %83
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %16, align 1
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %16, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %65
  %94 = load i8, i8* %17, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8*, i8** %15, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %98, %95
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %96, align 1
  br label %110

101:                                              ; preds = %65
  %102 = load i8, i8* %17, align 1
  %103 = zext i8 %102 to i32
  %104 = xor i32 %103, -1
  %105 = load i8*, i8** %15, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, %104
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %105, align 1
  br label %110

110:                                              ; preds = %101, %93
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %62

115:                                              ; preds = %62
  br label %116

116:                                              ; preds = %119, %115
  %117 = load i64, i64* %11, align 8
  %118 = icmp ult i64 %117, 128
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %121 = bitcast i32* %120 to i8*
  %122 = load i64, i64* %11, align 8
  %123 = lshr i64 %122, 3
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8* %124, i8** %15, align 8
  %125 = load i64, i64* %11, align 8
  %126 = and i64 %125, 7
  %127 = trunc i64 %126 to i32
  %128 = ashr i32 128, %127
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %17, align 1
  %130 = load i8, i8* %17, align 1
  %131 = zext i8 %130 to i32
  %132 = xor i32 %131, -1
  %133 = load i8*, i8** %15, align 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, %132
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %133, align 1
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  br label %116

140:                                              ; preds = %116
  %141 = load i32, i32* @AF_INET6, align 4
  %142 = bitcast %struct.in6_addr* %9 to %struct.in_addr*
  %143 = trunc i64 %19 to i32
  %144 = call i32* @inet_ntop(i32 %141, %struct.in_addr* %142, i8* %21, i32 %143)
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = call i32 (...) @print_error()
  br label %148

148:                                              ; preds = %146, %140
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %21, i64 %149)
  store i32 0, i32* %3, align 4
  %151 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @print_usage(...) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @parse_str(i32, i8*, %struct.in_addr*, i64*) #2

declare dso_local i32* @inet_ntop(i32, %struct.in_addr*, i8*, i32) #2

declare dso_local i32 @print_error(...) #2

declare dso_local i32 @printf(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
