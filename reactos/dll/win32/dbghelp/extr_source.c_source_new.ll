; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_source.c_source_new.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_source.c_source_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i32, i32, i32, i32 }
%struct.source_rb = type { i32, i32 }

@rb_module = common dso_local global %struct.module* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @source_new(%struct.module* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.source_rb*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %196

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %19
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %9, align 8
  br label %70

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, 1
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add i32 %34, %36
  %38 = add i32 %37, 1
  %39 = call i8* @HeapAlloc(i32 %32, i32 0, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %196

44:                                               ; preds = %29
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strcpy(i8* %46, i8* %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sub i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 47
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 47, i8* %62, align 1
  br label %63

63:                                               ; preds = %57, %44
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcpy(i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %63, %27
  %71 = load %struct.module*, %struct.module** %5, align 8
  store %struct.module* %71, %struct.module** @rb_module, align 8
  %72 = load %struct.module*, %struct.module** %5, align 8
  %73 = getelementptr inbounds %struct.module, %struct.module* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @source_find(i8* %77)
  store i32 %78, i32* %8, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %190

80:                                               ; preds = %76, %70
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  %84 = load %struct.module*, %struct.module** %5, align 8
  %85 = getelementptr inbounds %struct.module, %struct.module* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = load %struct.module*, %struct.module** %5, align 8
  %91 = getelementptr inbounds %struct.module, %struct.module* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %80
  %95 = load %struct.module*, %struct.module** %5, align 8
  %96 = getelementptr inbounds %struct.module, %struct.module* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %115, label %99

99:                                               ; preds = %94
  %100 = load %struct.module*, %struct.module** %5, align 8
  %101 = getelementptr inbounds %struct.module, %struct.module* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  %106 = add nsw i32 %105, 255
  %107 = and i32 %106, -256
  %108 = load %struct.module*, %struct.module** %5, align 8
  %109 = getelementptr inbounds %struct.module, %struct.module* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = call i32 (...) @GetProcessHeap()
  %111 = load %struct.module*, %struct.module** %5, align 8
  %112 = getelementptr inbounds %struct.module, %struct.module* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @HeapAlloc(i32 %110, i32 0, i32 %113)
  store i8* %114, i8** %12, align 8
  br label %139

115:                                              ; preds = %94
  %116 = load %struct.module*, %struct.module** %5, align 8
  %117 = getelementptr inbounds %struct.module, %struct.module* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 2
  %120 = load %struct.module*, %struct.module** %5, align 8
  %121 = getelementptr inbounds %struct.module, %struct.module* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = add nsw i32 %124, 1
  %126 = add nsw i32 %125, 255
  %127 = and i32 %126, -256
  %128 = call i32 @max(i32 %119, i32 %127)
  %129 = load %struct.module*, %struct.module** %5, align 8
  %130 = getelementptr inbounds %struct.module, %struct.module* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = call i32 (...) @GetProcessHeap()
  %132 = load %struct.module*, %struct.module** %5, align 8
  %133 = getelementptr inbounds %struct.module, %struct.module* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.module*, %struct.module** %5, align 8
  %136 = getelementptr inbounds %struct.module, %struct.module* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @HeapReAlloc(i32 %131, i32 0, i8* %134, i32 %137)
  store i8* %138, i8** %12, align 8
  br label %139

139:                                              ; preds = %115, %99
  %140 = load i8*, i8** %12, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  br label %191

143:                                              ; preds = %139
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.module*, %struct.module** %5, align 8
  %146 = getelementptr inbounds %struct.module, %struct.module* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %80
  %148 = load %struct.module*, %struct.module** %5, align 8
  %149 = getelementptr inbounds %struct.module, %struct.module* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %8, align 4
  %151 = load %struct.module*, %struct.module** %5, align 8
  %152 = getelementptr inbounds %struct.module, %struct.module* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.module*, %struct.module** %5, align 8
  %155 = getelementptr inbounds %struct.module, %struct.module* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @memcpy(i8* %158, i8* %159, i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.module*, %struct.module** %5, align 8
  %164 = getelementptr inbounds %struct.module, %struct.module* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.module*, %struct.module** %5, align 8
  %168 = getelementptr inbounds %struct.module, %struct.module* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.module*, %struct.module** %5, align 8
  %171 = getelementptr inbounds %struct.module, %struct.module* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %169, i64 %173
  store i8 0, i8* %174, align 1
  %175 = load %struct.module*, %struct.module** %5, align 8
  %176 = getelementptr inbounds %struct.module, %struct.module* %175, i32 0, i32 4
  %177 = call %struct.source_rb* @pool_alloc(i32* %176, i32 8)
  store %struct.source_rb* %177, %struct.source_rb** %14, align 8
  %178 = icmp ne %struct.source_rb* %177, null
  br i1 %178, label %179, label %189

179:                                              ; preds = %147
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.source_rb*, %struct.source_rb** %14, align 8
  %182 = getelementptr inbounds %struct.source_rb, %struct.source_rb* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load %struct.module*, %struct.module** %5, align 8
  %184 = getelementptr inbounds %struct.module, %struct.module* %183, i32 0, i32 3
  %185 = load i8*, i8** %9, align 8
  %186 = load %struct.source_rb*, %struct.source_rb** %14, align 8
  %187 = getelementptr inbounds %struct.source_rb, %struct.source_rb* %186, i32 0, i32 1
  %188 = call i32 @wine_rb_put(i32* %184, i8* %185, i32* %187)
  br label %189

189:                                              ; preds = %179, %147
  br label %190

190:                                              ; preds = %189, %76
  br label %191

191:                                              ; preds = %190, %142
  %192 = call i32 (...) @GetProcessHeap()
  %193 = load i8*, i8** %10, align 8
  %194 = call i32 @HeapFree(i32 %192, i32 0, i8* %193)
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %191, %42, %17
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @source_find(i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.source_rb* @pool_alloc(i32*, i32) #1

declare dso_local i32 @wine_rb_put(i32*, i8*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
