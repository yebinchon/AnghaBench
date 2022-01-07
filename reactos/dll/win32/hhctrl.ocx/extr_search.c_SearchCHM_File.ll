; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_search.c_SearchCHM_File.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_search.c_SearchCHM_File.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8* }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not open '%s' stream: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @SearchCHM_File to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SearchCHM_File(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load i32, i32* @BLOCK_SIZE, align 4
  %23 = call i8* @heap_alloc(i32 %22)
  store i8* %23, i8** %8, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @STGM_READ, align 4
  %28 = call i32 @IStorage_OpenStream(i32* %25, i8* %26, i32* null, i32 %27, i32 0, i32** %12)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @debugstr_w(i8* %33)
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %142

37:                                               ; preds = %3
  %38 = call i32 @strbuf_init(%struct.TYPE_9__* %10)
  %39 = call i32 @strbuf_init(%struct.TYPE_9__* %9)
  %40 = call i32 @strbuf_init(%struct.TYPE_9__* %11)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @stream_init(i32* %17, i32* %41)
  br label %43

43:                                               ; preds = %109, %37
  %44 = call i64 @next_node(i32* %17, %struct.TYPE_9__* %10)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %112

46:                                               ; preds = %43
  %47 = call i32 @get_node_name(%struct.TYPE_9__* %10, %struct.TYPE_9__* %11)
  %48 = call i64 @next_content(i32* %17, %struct.TYPE_9__* %9)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %109

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @_strnicmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @CP_ACP, align 4
  %67 = load i8*, i8** %19, align 8
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @MultiByteToWideChar(i32 %66, i32 0, i8* %67, i32 %68, i8* null, i32 0)
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 1
  %74 = trunc i64 %73 to i32
  %75 = call i8* @heap_alloc(i32 %74)
  store i8* %75, i8** %15, align 8
  %76 = load i32, i32* @CP_ACP, align 4
  %77 = load i8*, i8** %19, align 8
  %78 = load i32, i32* %20, align 4
  %79 = load i8*, i8** %15, align 8
  %80 = load i32, i32* %21, align 4
  %81 = call i32 @MultiByteToWideChar(i32 %76, i32 0, i8* %77, i32 %78, i8* %79, i32 %80)
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %65, %54
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = call i8* @heap_realloc(i8* %87, i32 %91)
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8*, i8** %19, align 8
  %98 = load i32, i32* %20, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %86, %50, %46
  %110 = call i32 @strbuf_zero(%struct.TYPE_9__* %10)
  %111 = call i32 @strbuf_zero(%struct.TYPE_9__* %9)
  br label %43

112:                                              ; preds = %43
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %128, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = call signext i8 @tolower(i8 signext %122)
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 %123, i8* %127, align 1
  br label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %113

131:                                              ; preds = %113
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = call i64 @strstr(i8* %132, i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %136, %131
  %139 = call i32 @strbuf_free(%struct.TYPE_9__* %10)
  %140 = call i32 @strbuf_free(%struct.TYPE_9__* %9)
  %141 = call i32 @strbuf_free(%struct.TYPE_9__* %11)
  br label %142

142:                                              ; preds = %138, %32
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @heap_free(i8* %143)
  %145 = load i32*, i32** %12, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32*, i32** %12, align 8
  %149 = call i32 @IStream_Release(i32* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %15, align 8
  %155 = call i32 @heap_free(i8* %154)
  store i8* null, i8** %4, align 8
  br label %158

156:                                              ; preds = %150
  %157 = load i8*, i8** %15, align 8
  store i8* %157, i8** %4, align 8
  br label %158

158:                                              ; preds = %156, %153
  %159 = load i8*, i8** %4, align 8
  ret i8* %159
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @IStorage_OpenStream(i32*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_9__*) #1

declare dso_local i32 @stream_init(i32*, i32*) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @next_content(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i8* @heap_realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_9__*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_9__*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
