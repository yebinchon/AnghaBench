; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_inet_resolve_host.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_inet_resolve_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.hostent = type { i32** }
%struct.sockaddr_in = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"host not found\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_inet_resolve_host(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hostent*, align 8
  %10 = alloca %struct.sockaddr_in, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = call i32 @ngx_memzero(%struct.sockaddr_in* %10, i32 16)
  %12 = load i32, i32* @AF_INET, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ngx_inet_addr(i32 %17, i64 %21)
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INADDR_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %118

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @ngx_alloc(i64 %35, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %3, align 8
  br label %130

44:                                               ; preds = %30
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @ngx_cpystrn(i32* %45, i32 %49, i64 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = call %struct.hostent* @gethostbyname(i8* %57)
  store %struct.hostent* %58, %struct.hostent** %9, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @ngx_free(i32* %59)
  %61 = load %struct.hostent*, %struct.hostent** %9, align 8
  %62 = icmp eq %struct.hostent* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %44
  %64 = load %struct.hostent*, %struct.hostent** %9, align 8
  %65 = getelementptr inbounds %struct.hostent, %struct.hostent* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63, %44
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  %73 = load i64, i64* @NGX_ERROR, align 8
  store i64 %73, i64* %3, align 8
  br label %130

74:                                               ; preds = %63
  store i64 0, i64* %8, align 8
  br label %75

75:                                               ; preds = %84, %74
  %76 = load %struct.hostent*, %struct.hostent** %9, align 8
  %77 = getelementptr inbounds %struct.hostent, %struct.hostent* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %75

87:                                               ; preds = %75
  store i64 0, i64* %7, align 8
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load %struct.hostent*, %struct.hostent** %9, align 8
  %94 = getelementptr inbounds %struct.hostent, %struct.hostent* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %106 = load i64, i64* %8, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i64 @ngx_inet_add_addr(%struct.TYPE_12__* %103, %struct.TYPE_11__* %104, %struct.sockaddr* %105, i32 16, i32 %107)
  %109 = load i64, i64* @NGX_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %92
  %112 = load i64, i64* @NGX_ERROR, align 8
  store i64 %112, i64* %3, align 8
  br label %130

113:                                              ; preds = %92
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %7, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %7, align 8
  br label %88

117:                                              ; preds = %88
  br label %128

118:                                              ; preds = %2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %122 = call i64 @ngx_inet_add_addr(%struct.TYPE_12__* %119, %struct.TYPE_11__* %120, %struct.sockaddr* %121, i32 16, i32 1)
  %123 = load i64, i64* @NGX_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i64, i64* @NGX_ERROR, align 8
  store i64 %126, i64* %3, align 8
  br label %130

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %117
  %129 = load i64, i64* @NGX_OK, align 8
  store i64 %129, i64* %3, align 8
  br label %130

130:                                              ; preds = %128, %125, %111, %70, %42
  %131 = load i64, i64* %3, align 8
  ret i64 %131
}

declare dso_local i32 @ngx_memzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @ngx_inet_addr(i32, i64) #1

declare dso_local i32* @ngx_alloc(i64, i32) #1

declare dso_local i32 @ngx_cpystrn(i32*, i32, i64) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @ngx_free(i32*) #1

declare dso_local i64 @ngx_inet_add_addr(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.sockaddr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
