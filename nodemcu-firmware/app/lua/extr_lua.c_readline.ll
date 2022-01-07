; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_readline.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32, i32, i32 }

@run_input = common dso_local global i64 0, align 8
@last_nl_char = common dso_local global i8 0, align 1
@uart0_echo = common dso_local global i64 0, align 8
@need_len = common dso_local global i64 0, align 8
@end_char = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readline(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %187, %105, %63, %29, %1
  %7 = call i64 @uart_getc(i8* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %188

9:                                                ; preds = %6
  %10 = load i64, i64* @run_input, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %133

12:                                               ; preds = %9
  %13 = load i8, i8* @last_nl_char, align 1
  store i8 %13, i8* %5, align 1
  store i8 0, i8* @last_nl_char, align 1
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %12
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %17
  br label %6

30:                                               ; preds = %25, %21
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 127
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %4, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %71

38:                                               ; preds = %34, %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i64, i64* @uart0_echo, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @uart_putc(i8 signext 8)
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i64, i64* @uart0_echo, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @uart_putc(i8 signext 32)
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i64, i64* @uart0_echo, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @uart_putc(i8 signext 8)
  br label %58

58:                                               ; preds = %56, %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %58, %38
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 0, i8* %70, align 1
  br label %6

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71
  %73 = load i8, i8* %4, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %4, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %113

80:                                               ; preds = %76, %72
  %81 = load i8, i8* %4, align 1
  store i8 %81, i8* @last_nl_char, align 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i64, i64* @uart0_echo, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = call i32 @uart_putc(i8 signext 10)
  br label %93

93:                                               ; preds = %91, %80
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @uart_on_data_cb(i8* %96, i64 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @puts(i32 %108)
  br label %6

110:                                              ; preds = %93
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i32 1, i32* %112, align 8
  store i32 1, i32* %3, align 4
  br label %188

113:                                              ; preds = %76
  %114 = load i64, i64* @uart0_echo, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8, i8* %4, align 1
  %118 = call i32 @uart_putc(i8 signext %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp uge i64 %123, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %119
  br label %133

133:                                              ; preds = %132, %9
  %134 = load i8, i8* %4, align 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8 %134, i8* %141, align 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %143, align 8
  %146 = load i64, i64* @run_input, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %187, label %148

148:                                              ; preds = %133
  %149 = load i64, i64* @need_len, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @need_len, align 8
  %156 = icmp uge i64 %154, %155
  br i1 %156, label %176, label %157

157:                                              ; preds = %151, %148
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp uge i64 %160, %164
  br i1 %165, label %176, label %166

166:                                              ; preds = %157
  %167 = load i64, i64* @end_char, align 8
  %168 = icmp sge i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = load i8, i8* %4, align 1
  %171 = zext i8 %170 to i32
  %172 = load i64, i64* @end_char, align 8
  %173 = trunc i64 %172 to i8
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %169, %157, %151
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @uart_on_data_cb(i8* %179, i64 %182)
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %176, %169, %166
  br label %187

187:                                              ; preds = %186, %133
  store i8 0, i8* %4, align 1
  br label %6

188:                                              ; preds = %110, %6
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ugt i64 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %188
  %194 = load i64, i64* @run_input, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %212, label %196

196:                                              ; preds = %193
  %197 = load i64, i64* @need_len, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %196
  %200 = load i64, i64* @end_char, align 8
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @uart_on_data_cb(i8* %205, i64 %208)
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  store i64 0, i64* %211, align 8
  br label %212

212:                                              ; preds = %202, %199, %196, %193, %188
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @uart_getc(i8*) #1

declare dso_local i32 @uart_putc(i8 signext) #1

declare dso_local i32 @uart_on_data_cb(i8*, i64) #1

declare dso_local i32 @puts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
